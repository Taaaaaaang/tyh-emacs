;;; swift-helpful-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "swift-helpful" "swift-helpful.el" (0 0 0 0))
;;; Generated autoloads from swift-helpful.el

(autoload 'swift-helpful "swift-helpful" "\
Open a panel with information about a Swift token at point.
Information comes from different configurable sources: Language
Server Protocol (LSP), the Swift reference manuals, or the
standard library source code (if locally available and
accessible).

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "swift-helpful" '("swift-helpful-")))

;;;***

;;;### (autoloads nil "swift-helpful-regex" "swift-helpful-regex.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from swift-helpful-regex.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "swift-helpful-regex" '("swift-helpful--")))

;;;***

;;;### (autoloads nil nil ("swift-helpful-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; swift-helpful-autoloads.el ends here
