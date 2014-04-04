;; Detect project RVM
(defadvice inf-ruby-console-auto (before activate-rvm-for-robe activate)
  (rvm-activate-corresponding-ruby))

;; Bind tab to complete or indent
;; (defun complete-or-indent ()
;;   (interactive)
;;   (if (company-manual-begin)
;;       (company-complete)
;;     (indent-according-to-mode)))


;; Ruby hooks
(add-hook 'enh-ruby-mode-hook
	  'robe-mode)
(add-hook 'enh-ruby-mode-hook
	  'rinari-minor-mode)
(add-hook 'enh-ruby-mode-hook
	  (lambda ()
	    (robe-start "yes")))
