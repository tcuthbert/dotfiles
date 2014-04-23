;; Web-mode 
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))

;; Use smartparens
;(add-hook 'web-mode-hook #'(lambda () (smartparens-mode -1)))
(defun my-web-mode-hook ()
  (setq web-mode-enable-auto-pairing nil))

(add-hook 'web-mode-hook  'my-web-mode-hook)

(defun sp-web-mode-is-code-context (id action context)
  (when (and (eq action 'insert)
	     (not (or (get-text-property (point) 'part-side)
		      (get-text-property (point) 'block-side))))

    t))
(sp-local-pair 'web-mode "<" nil :when '(sp-web-mode-is-code-context))

;; Smartparens erb tags
(defun my-erb-tags ()
  (when (and (stringp buffer-file-name)
	     (string-match "\\.erb\\'" buffer-file-name))
    (sp-local-pair 'web-mode "%" "%")))

(add-hook 'find-file-hook 'my-erb-tags)

;; Scss-mode
(autoload 'scss-mode "scss-mode")
(add-to-list 'auto-mode-alist '("\\.sass\\'" . scss-mode))

;; Sass-mode
(autoload 'sass-mode "sass-mode")
(add-to-list 'auto-mode-alist '("\\.sass\\'" . sass-mode))
(require 'flymake-sass)
(add-hook 'sass-mode-hook 'flymake-sass-load)
