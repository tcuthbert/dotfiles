;; Detect project RVM
(defadvice inf-ruby-console-auto (before activate-rvm-for-robe activate)
  (rvm-activate-corresponding-ruby))

;; Robe mode
(add-hook 'enh-ruby-mode-hook 'robe-mode)
