;;; floobits-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "floobits" "floobits.el" (21281 58648 815856
;;;;;;  703000))
;;; Generated autoloads from floobits.el

(autoload 'floobits-summon "floobits" "\
Summons all users to your cursor position.

\(fn)" t nil)

(autoload 'floobits-follow-mode-toggle "floobits" "\
Toggles following of recent changes in a workspace

\(fn)" t nil)

(autoload 'floobits-leave-workspace "floobits" "\
leaves the current workspace

\(fn)" t nil)

(autoload 'floobits-share-dir-public "floobits" "\
Create a workspace and populate it with the contents of the directory, dir-to-share, or make it.
If the directory corresponds to an existing floobits workspace, you will instead join the workspace.

\(fn DIR-TO-SHARE)" t nil)

(autoload 'floobits-share-dir-private "floobits" "\
Create a workspace and populate it with the contents of the directory, dir-to-share, or make it.
If the directory corresponds to an existing floobits workspace, you will instead join the workspace.

\(fn DIR-TO-SHARE)" t nil)

(autoload 'floobits-join-workspace "floobits" "\
Join an existing floobits workspace.
See floobits-share-dir to create one or visit floobits.com.

\(fn FLOOURL)" t nil)

(autoload 'floobits-workspace-settings "floobits" "\


\(fn)" t nil)

(autoload 'floobits-open-workspace-in-browser "floobits" "\


\(fn)" t nil)

(autoload 'floobits-clear-highlights "floobits" "\
Clears all highlights

\(fn)" t nil)

(autoload 'floobits-add-to-workspace "floobits" "\
Adds a file or directory to the workspace

\(fn PATH)" t nil)

;;;***

;;;### (autoloads nil nil ("floobits-pkg.el") (21281 58648 828832
;;;;;;  937000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; floobits-autoloads.el ends here
