(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-hook 'js2-mode-hook (lambda () (tern-mode t)))
(add-to-list 'load-path "~/.emacs.d/vendor/tern/emacs")
(autoload 'tern-mode "tern.el" nil t)

;; Smartparens braces
(sp-local-pair 'js2-mode "{" nil :post-handlers '((my-create-newline-and-enter-sexp "C-j")))
(sp-local-pair 'js2-mode "[" nil :post-handlers '((my-create-newline-and-enter-sexp "C-j")))

(sp-local-pair 'js-mode "{" nil :post-handlers '((my-create-newline-and-enter-sexp "C-j")))
(sp-local-pair 'js-mode "[" nil :post-handlers '((my-create-newline-and-enter-sexp "C-j")))

(defun my-create-newline-and-enter-sexp (&rest _ignored)
  "Open a new brace or bracket expression, with relevant newlines and indent. "
  (newline)
  (indent-according-to-mode)
  (forward-line -1)
  (indent-according-to-mode))
