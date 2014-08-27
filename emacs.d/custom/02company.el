;; Enable global completion
(add-hook 'after-init-hook 'global-company-mode)

;; Trigger key-binding
(global-set-key (kbd "M-o") 'company-complete-common)

;; Bind TAB to complete or indent
;; (defun indent-or-complete ()
;;   (interactive)
;;   (if (looking-at "\\_>")
;;       (company-complete-common)
;;     (indent-according-to-mode)))
;; (global-set-key (kbd "TAB") 'indent-or-complete)

;; Python completion
(eval-after-load 'company
  '(progn
     (push 'company-anaconda company-backends )))

;; Ruby completion
(eval-after-load 'company
  '(progn
     (push 'company-inf-ruby company-backends)
     (push 'company-robe company-backends)))

;; Javascript completion
(eval-after-load 'company
  '(progn
     (push 'company-tern company-backends)))

;; Not needed since company-clang.el update
;; C/C++ Clang completion
;; (defun my-c++-completion-hook ()
;;   (eval-after-load 'company
;;     '(progn
;;        (push 'company-clang company-backends)
;;        (setq company-clang-arguments '("-std=c++11"
;; 				       "-I/usr/include/c++/4.7"
;; 				       "-I/usr/include/x86_64-linux-gnu/c++/4.7"
;; 				       "-I/usr/include"
;; 				       "-I/usr/include/x86_64-linux-gnu"
;; 				       "-I/usr/include/clang/3.2/include")))))

;; (defun my-c-completion-hook ()
;;   (eval-after-load 'company
;;     '(progn
;;        (push 'company-clang company-backends)
;;        (setq company-clang-arguments '("-std=c99"
;; 				       "-I/usr/include"
;; 				       "-I/usr/include/x86_64-linux-gnu"
;; 				       "-I/usr/src/linux-headers-3.8.0-35/include/"
;;				       "-I/usr/include/clang/3.2/include")))))

;(add-hook 'c-mode-hook 'my-c-completion-hook)
;(add-hook 'c++-mode-hook 'my-c++-completion-hook)

;; Web mode completion
(add-hook 'web-mode-hook 'robe-mode)
