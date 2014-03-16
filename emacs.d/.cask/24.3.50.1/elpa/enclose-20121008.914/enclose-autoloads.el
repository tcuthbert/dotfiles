;;; enclose-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "enclose" "enclose.el" (21281 58646 815813
;;;;;;  253000))
;;; Generated autoloads from enclose.el

(autoload 'enclose-mode "enclose" "\
Enclose cursor within punctuation pairs.

\(fn &optional ARG)" t nil)

(autoload 'turn-on-enclose-mode "enclose" "\
Turn on `enclose-mode'.

\(fn)" t nil)

(autoload 'turn-off-enclose-mode "enclose" "\
Turn off `enclose-mode'.

\(fn)" t nil)

(defvar enclose-global-mode nil "\
Non-nil if Enclose-Global mode is enabled.
See the command `enclose-global-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `enclose-global-mode'.")

(custom-autoload 'enclose-global-mode "enclose" nil)

(autoload 'enclose-global-mode "enclose" "\
Toggle Enclose mode in all buffers.
With prefix ARG, enable Enclose-Global mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Enclose mode is enabled in all buffers where
`turn-on-enclose-mode' would do it.
See `enclose-mode' for more information on Enclose mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil nil ("enclose-pkg.el") (21281 58646 819851
;;;;;;  321000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; enclose-autoloads.el ends here
