;; Flycheck
(add-hook 'python-mode-hook 'flycheck-mode)

;; Bind Keys
(global-set-key (kbd "<f5>") 'compile)

;; Stop colon auto-indenting
;(add-hook 'python-mode-hook
          ;(lambda ()
            ;(setq electric-indent-chars (delq ?: electric-indent-chars))))


;; Enable ipython interpreter
(setq
 python-shell-interpreter "ipython2"
 python-shell-interpreter-args ""
 python-shell-prompt-regexp "In \\[[0-9]+\\]: "
 python-shell-prompt-output-regexp "Out\\[[0-9]+\\]: "
 python-shell-completion-setup-code
   "from IPython.core.completerlib import module_completion"
 python-shell-completion-module-string-code
   "';'.join(module_completion('''%s'''))\n"
 python-shell-completion-string-code
   "';'.join(get_ipython().Completer.all_completions('''%s'''))\n")

;; Anaconda mode
(add-hook 'python-mode-hook 'anaconda-mode)
(add-hook 'python-mode-hook 'eldoc-mode)

;; Prevent yasnippet indent
(add-hook 'python-mode-hook
	  '(lambda ()
	     (set (make-local-variable 'yas-indent-line) 'fixed)))

;; Pyenv mode
(add-hook 'python-mode-hook 'pyenv-mode)

;; Smart parens settings
;; (sp-local-pair 'python-mode "[" nil :post-handlers '((my-create-newline-and-enter-sexp "C-j")))

;; (defun my-create-newline-and-enter-sexp (&rest _ignored)
;;   "Open a new brace or bracket expression, with relevant newlines and indent. "
;;   (newline)
;;   (indent-according-to-mode)
;;   (forward-line -1)
;;   (indent-according-to-mode))

;; Execute file
;; (fmakunbound 'python-shell-get-or-create-process)
;; (defun python-shell-get-or-create-process ()
;;   "Get or create an inferior Python process for current buffer and return it."
;;   (let* ((dedicated-proc-name (python-shell-get-process-name t))
;;          (dedicated-proc-buffer-name (format "*%s*" dedicated-proc-name))
;;          (global-proc-name  (python-shell-get-process-name nil))
;;          (global-proc-buffer-name (format "*%s*" global-proc-name))
;;          (dedicated-running (comint-check-proc dedicated-proc-buffer-name))
;;          (global-running (comint-check-proc global-proc-buffer-name))
;;          (current-prefix-arg 4))
;;     (when (and (not dedicated-running) (not global-running))
;;       (if (call-interactively 'run-python)
;;           (setq dedicated-running t)
;;         (setq global-running t)))
;;     ;; Always prefer dedicated
;;     (get-buffer-process (if dedicated-running
;;                             dedicated-proc-buffer-name
;;                           global-proc-buffer-name))))
(defun execute-file-interpreter ()
  (defvar infproc (concat "*Python[" (buffer-file-name) "]*"))
  ;; (if (get-buffer infproc)
  ;;     (kill-buffer infproc))
  (interactive)
  (python-shell-send-file (buffer-file-name))
  (python-shell-switch-to-shell))

;; (add-hook 'python-mode-hook
;;       (lambda ()
;;         (local-unset-key (kbd "C-c C-l"))))
;; (global-set-key (kbd "C-c C-l") 'execute-file-interpreter)

;; Sphinx
(add-hook 'python-mode-hook (lambda ()
                              (require 'sphinx-doc)
                              (sphinx-doc-mode t)))

;; Compliation shell on ponytests buffer
(add-hook 'pony-minor-mode-hook (lambda ()
                                  (add-hook 'comint-exec-hook (lambda ()
                                     (interactive)
                                     (compilation-shell-minor-mode t)))))
