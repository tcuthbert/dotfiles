(require 'evil)  
;; (evil-mode 1)

;; Evil trigger
(global-set-key (kbd "C-x C-e") 'evil-mode)

;; Evil numbers
(define-key evil-normal-state-map (kbd "C-c +") 'evil-numbers/inc-at-pt)
(define-key evil-normal-state-map (kbd "C-c -") 'evil-numbers/dec-at-pt)
