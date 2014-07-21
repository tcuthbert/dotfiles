;; Use cyberpunk theme
(load-theme 'cyberpunk t)

;; Disable startup screen
(setq inhibit-startup-screen t)

;; Navigate between windows using Alt-1, Alt-2, Shift-left, shift-up, shift-right
(windmove-default-keybindings)

;; Enable copy and pasting from clipboard
(setq x-select-enable-clipboard t)

;; Disable backup
(setq backup-inhibited t)

;; Disable auto save
(setq auto-save-default nil)

;; Enable linenum
(global-linum-mode t)

;; Disable prompts
(fset 'yes-or-no-p 'y-or-n-p)
(setq ido-create-new-buffer 'always)
(setq confirm-nonexistent-file-or-buffer nil)
(setq kill-buffer-query-functions
      (remq 'process-kill-buffer-query-function
	    kill-buffer-query-functions))

;; Enable ido
(require 'ido)
(ido-mode t)

;; Ag
(require 'ag)

;; Flyspell
(require 'flyspell)
(setq flyspell-issue-message-flg nil)
(add-hook 'enh-ruby-mode-hook
          (lambda () (flyspell-prog-mode)))

(add-hook 'web-mode-hook
          (lambda () (flyspell-prog-mode)))

;; Flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)

;; Yasnippet
(require 'yasnippet)
(yas-global-mode 1)
(add-to-list 'yas-snippet-dirs
	     '"~/.emacs.d/snippets")

;; Smartparens
(require 'smartparens-config)
(require 'smartparens-ruby)
(smartparens-global-mode)
(show-smartparens-global-mode t)
