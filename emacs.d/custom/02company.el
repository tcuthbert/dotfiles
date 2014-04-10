;; Enable global completion
(add-hook 'after-init-hook 'global-company-mode)

;; Bind TAB to complete or indent
(defun indent-or-complete ()
  (interactive)
  (if (looking-at "\\_>")
      (company-complete-common)
    (indent-according-to-mode)))
(global-set-key (kbd "TAB") 'indent-or-complete)

;; Python completion
(add-hook 'python-mode-hook 'jedi:setup)
(add-hook 'python-mode-hook 
          'company-jedi-start
          (setq jedi:complete-on-dot t))

;; Ruby completion
(eval-after-load 'company
  '(progn
     (push 'company-inf-ruby company-backends)
     (push 'company-robe company-backends)))

;; C/C++ Clang completion
(eval-after-load 'company
  '(progn
     (push 'company-clang company-backends)
     (setq company-clang-arguments '("-std=c++11"
				     "-I/usr/include/c++/4.7"
				     "-I/usr/include/x86_64-linux-gnu/c++/4.7"
				     "-I/usr/include"
				     "-I/usr/include/x86_64-linux-gnu"
				     "-I/usr/include/clang/3.2/include"))))
