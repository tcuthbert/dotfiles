;; Pandoc-mode
(add-hook 'markdown-mode-hook 'turn-on-pandoc)

;;(setq markdown-css-path (expand-file-name "markdown.css" "~/dotfiles/emacs.d"))
;;(setq markdown-command "pandoc --smart -f markdown -t html")

;(defvar css-path (expand-file-name "markdown.css" "~/.dotfiles/emacs.d"))
(defvar css-path (expand-file-name "monokai.css" "~/.dotfiles/emacs.d"))
(defvar mkdcmd
;  (concat "/home/tom/Downloads/pandoc-1.12.4.2/dist/build/pandoc/pandoc --highlight-style=haddock --smart -f markdown -t html -H " css-path))
  (concat "~/.cabal/bin/pandoc -f markdown -t json | runhaskell ~/Downloads/pygments.hs | pandoc -S -f json -t html -H " css-path))
(add-hook 'markdown-mode-hook (lambda () (visual-line-mode t)))
(setq markdown-command mkdcmd)
(add-to-list 'auto-mode-alist '("C[0-9]+\\.md\\'" . gfm-mode))
