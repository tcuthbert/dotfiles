;; Detect project RVM
(defadvice inf-ruby-console-auto (before activate-rvm-for-robe activate)
  (rvm-activate-corresponding-ruby))

;; Ruby hooks
;; (add-hook 'enh-ruby-mode-hook
;; 	  (lambda ()
;; 	    (local-set-key (kbd "C-c r") '(lambda () (interactive) (robe-start "yes")))))

(add-hook 'enh-ruby-mode-hook
	  '(lambda ()
	     (interactive)
	     (robe-mode)
	     (if (eq nil (get-buffer "*rails*")) (robe-start "yes"))))
