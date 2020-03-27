
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

(defun add-subdirs-to-load-path (dir)
  "Recursive add directories to 'load-path'."
  (let ((default-directory (file-name-as-directory dir)))
    (add-to-list 'load-path dir)
   (normal-top-level-add-subdirs-to-load-path)))
(add-subdirs-to-load-path "~/tyh-emacs/")
(require 'init)
