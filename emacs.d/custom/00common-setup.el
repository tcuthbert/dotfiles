;; Use cyberpunk theme
(load-theme 'cyberpunk t)

;; Allow emacsclient to fullscreen
(add-to-list 'default-frame-alist '(fullscreen . maximized))

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

;; Disable toolbar and menu
(tool-bar-mode -1)
(menu-bar-mode -1)

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
(require 'flx-ido)
(ido-everywhere 1)
(flx-ido-mode 1)
;; disable ido faces to see flx highlights.
(setq ido-enable-flex-matching t)
(setq ido-use-faces nil)

;; Ag
(require 'ag)

;; Emacs-helm
(global-set-key (kbd "C-c a") 'helm-do-ag)

;; Recentf
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
;; (global-set-key "\C-x\ \C-r" 'recentf-open-files)

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
;; (require 'smartparens-config)
;; (require 'smartparens-ruby)
;; (smartparens-global-mode)
;; (show-smartparens-global-mode t)

;; Electric Pair
(electric-pair-mode 1)
(setq electric-pair-open-newline-between-pairs t)
(show-paren-mode t)

;; Terminal clipboard support with Parcellite
;; (defun copy-from-linux ()
;;   (shell-command-to-string "parcellite 2> /dev/null"))

;; (defun paste-to-linux (text &optional push)
;;   (let ((process-connection-type nil))
;;     (let ((proc (start-process "parcellite" "parcellite" "parcellite" "-c")))
;;       (process-send-string proc text)
;;       (process-send-eof proc))))

;; (if (getenv "DISPLAY")                                                                                                                
;;     (progn
;;       (setq interprogram-cut-function 'paste-to-linux)
;;       (setq interprogram-paste-function 'copy-from-linux))
;;   )

;; Bind sr-speed-bar-toggle to F12
(global-set-key (kbd "<f12>") 'sr-speedbar-toggle)

;; Disable yas in term-mode
(add-hook 'term-mode-hook (lambda()
        (setq yas-dont-activate t)))
(add-hook 'multi-term-mode-hook (lambda()
        (setq yas-dont-activate t)))

;; Emacs Powerline
(require 'powerline)
(powerline-default-theme)

;; make indentation commands use space only (never tab character)
(setq-default indent-tabs-mode nil) ; emacs 23.1, 24.2, default to t

;; Zap up to char
(autoload 'zap-up-to-char "misc"
  "Kill up to, but not including ARGth occurrence of CHAR.")
(global-set-key (kbd "M-Z") 'zap-up-to-char)

;; Yafolding
(add-hook 'prog-mode-hook
          (lambda () (yafolding-mode)))

;; Vagrant
(eval-after-load 'tramp
  '(vagrant-tramp-enable))
(add-to-list 'tramp-remote-path 'tramp-own-remote-path)

;; Shell stuff
;; (add-hook 'multi-term-mode-hook 'compilation-shell-minor-mode)
;; (add-hook 'term-mode-hook 'compilation-shell-minor-mode)
;; (add-hook 'shell-mode-hook 'compilation-shell-minor-mode)
