;; Detect project RVM
(defadvice inf-ruby-console-auto (before activate-rvm-for-robe activate)
  (rvm-activate-corresponding-ruby))

;; Ruby hooks
(add-hook 'enh-ruby-mode-hook
	  'robe-mode)
(add-hook 'enh-ruby-mode-hook
	  (lambda ()
	    (local-set-key (kbd "C-c r") '(lambda () (interactive) (robe-start "yes")))))
