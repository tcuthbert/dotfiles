;; Enable global completion
(add-hook 'after-init-hook 'global-company-mode)

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
