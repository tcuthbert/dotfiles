;;(setq markdown-css-path (expand-file-name "markdown.css" "~/dotfiles/emacs.d"))
;;(setq markdown-command "pandoc --smart -f markdown -t html")

(defvar css-path (expand-file-name "markdown.css" "~/dotfiles/emacs.d"))
(defvar mkdcmd
  (concat "pandoc --smart -f markdown -t html -H " css-path))
(add-hook 'markdown-mode-hook (lambda () (visual-line-mode t)))
(setq markdown-command mkdcmd)
(add-to-list 'auto-mode-alist '("C[0-9]+\\.md\\'" . gfm-mode))
