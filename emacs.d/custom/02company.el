;; Enable global completion
(add-hook 'after-init-hook 'global-company-mode)

;; Bind TAB to complete or indent
(defun indent-or-complete ()
  (interactive)
  (if (looking-at "\\_>")
      (company-complete-common)
    (indent-according-to-mode)))
(global-set-key (kbd "TAB") 'indent-or-complete)

;; Python completion
(add-hook 'python-mode-hook 'jedi:setup)
(add-hook 'python-mode-hook 
          'company-jedi-start
          (setq jedi:complete-on-dot t))

;; Ruby completion
(eval-after-load 'company
  '(add-to-list 'company-backends 'company-inf-ruby))

(eval-after-load 'company
  '(push 'company-robe company-backends))
