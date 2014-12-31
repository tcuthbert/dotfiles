;; (sp-local-pair 'c++-mode "{" nil :post-handlers '((my-create-newline-and-enter-sexp "RET")))
;; (sp-local-pair 'c-mode "{" nil :post-handlers '((my-create-newline-and-enter-sexp "RET")))

;; (defun my-create-newline-and-enter-sexp (&rest _ignored)
;;   "Open a new brace or bracket expression, with relevant newlines and indent. "
;;   (newline)
;;   (indent-according-to-mode)
;;   (forward-line -1)
;;     (indent-according-to-mode))

(add-hook 'c-mode-common-hook
          (lambda ()
            (if (derived-mode-p 'c-mode 'c++-mode)
                (cppcm-reload-all)
              )))
;; OPTIONAL, somebody reported that they can use this package with Fortran
(add-hook 'c90-mode-hook (lambda () (cppcm-reload-all)))
;; OPTIONAL, avoid typing full path when starting gdb
(global-set-key (kbd "C-c C-g")
 '(lambda ()(interactive) (gud-gdb (concat "gdb --fullname " (cppcm-get-exe-path-current-buffer)))))
;; OPTIONAL, some users need specify extra flags forwarded to compiler
(setq cppcm-extra-preprocss-flags-from-user '("-I/usr/src/linux/include" "-DNDEBUG"))

;; Flycheck
(add-hook 'c++-mode-hook
          (lambda ()
            (setq flycheck-clang-language-standard "c++11")))
