;; Flycheck
(add-hook 'python-mode-hook 'flycheck-mode)

;; Bind Keys
(global-set-key (kbd "<f5>") 'compile)

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
