(add-hook 'markdown-mode-hook (lambda () (visual-line-mode t)))
(setq markdown-command "pandoc --smart -f markdown -t html")
(setq markdown-css-path (expand-file-name "markdown.css" "~/dotfiles/emacs.d"))
(add-to-list 'auto-mode-alist '("IMPLEMENTATION\\.md\\'" . gfm-mode))
