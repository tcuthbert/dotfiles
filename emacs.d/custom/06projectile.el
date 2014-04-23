(require 'grizzl)
(projectile-global-mode)
(setq projectile-require-project-root nil)
(setq projectile-completion-system 'grizzl)
;; Press Command-p for fuzzy find in project
(global-set-key (kbd "s-p") 'projectile-find-file)
;; Press Command-b for fuzzy switch buffer
(global-set-key (kbd "s-b") 'projectile-switch-to-buffer)

;; Project-rails mode
(add-hook 'projectile-mode-hook 'projectile-rails-on)
