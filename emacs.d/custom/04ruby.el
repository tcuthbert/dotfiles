;; Detect project RVM
(defadvice inf-ruby-console-auto (before activate-rvm-for-robe activate)
  (rvm-activate-corresponding-ruby))

;; Ruby hooks
(add-hook 'ruby-mode-hook
	  (lambda ()
	    (vagrant-tab-width)))
	    ;; (local-set-key (kbd "C-c r") '(lambda () (interactive) (robe-start "yes")))))

(add-hook 'enh-ruby-mode-hook
	  '(lambda ()
	     (interactive)
	     (robe-mode)
	     (if (eq nil (get-buffer "*rails*")) (robe-start "yes"))))

;; Set Vagrant tab-width
(defun vagrant-tab-width ()
  (when (and (stringp buffer-file-name)
	     (string-match "Vagrantfile\\'" buffer-file-name))
    (enh-ruby-mode)
    (setq tab-width 2)))
