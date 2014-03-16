;; Enable global completion
(add-hook 'after-init-hook 'global-company-mode)

;; Python completion
(add-hook 'python-mode-hook 'jedi:setup)
(add-hook 'python-mode-hook 
          'company-jedi-start
          (setq jedi:complete-on-dot t))
