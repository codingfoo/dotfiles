;;; my-autoload.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads nil "lib/dash.el/dash" "lib/dash.el/dash.el" (0
;;;;;;  0 0 0))
;;; Generated autoloads from lib/dash.el/dash.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lib/dash.el/dash" '("dash-" "-keep" "-butlast" "-non" "-only-some" "-zip" "-e" "->" "-a" "-gr" "-when-let" "-d" "-l" "-s" "-p" "-r" "-m" "-i" "-f" "-u" "-value-to-list" "-t" "--" "-c" "!cons" "!cdr")))

;;;***

;;;### (autoloads nil "lib/dash.el/dash-functional" "lib/dash.el/dash-functional.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lib/dash.el/dash-functional.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lib/dash.el/dash-functional" '("-rpartial" "-juxt" "-not" "-o" "-a" "-iteratefn" "-c" "-f" "-p")))

;;;***

;;;### (autoloads nil "lib/solarized-emacs/solarized" "lib/solarized-emacs/solarized.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lib/solarized-emacs/solarized.el

(autoload 'solarized-color-blend "lib/solarized-emacs/solarized" "\
Blends COLOR1 onto COLOR2 with ALPHA.

COLOR1 and COLOR2 should be color names (e.g. \"white\") or RGB
triplet strings (e.g. \"#ff12ec\").

Alpha should be a float between 0 and 1.

\(fn COLOR1 COLOR2 ALPHA)" nil nil)

(when (and (boundp 'custom-theme-load-path) load-file-name) (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name))))

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lib/solarized-emacs/solarized" '("create-solarized-theme" "solarized-")))

;;;***

;;;### (autoloads nil "lib/solarized-emacs/solarized-dark-theme"
;;;;;;  "lib/solarized-emacs/solarized-dark-theme.el" (0 0 0 0))
;;; Generated autoloads from lib/solarized-emacs/solarized-dark-theme.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lib/solarized-emacs/solarized-dark-theme" '("solarized-dark")))

;;;***

;;;### (autoloads nil "lib/solarized-emacs/solarized-light-theme"
;;;;;;  "lib/solarized-emacs/solarized-light-theme.el" (0 0 0 0))
;;; Generated autoloads from lib/solarized-emacs/solarized-light-theme.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lib/solarized-emacs/solarized-light-theme" '("solarized-light")))

;;;***

;;;### (autoloads nil "lib/solarized-emacs/solarized-theme-utils"
;;;;;;  "lib/solarized-emacs/solarized-theme-utils.el" (0 0 0 0))
;;; Generated autoloads from lib/solarized-emacs/solarized-theme-utils.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lib/solarized-emacs/solarized-theme-utils" '("solarized-import-faces")))

;;;***

;;;### (autoloads nil nil ("lib/solarized-emacs/solarized-theme-pkg.el"
;;;;;;  "lib/solarized-emacs/solarized-theme.el") (0 0 0 0))

;;;***

(provide 'my-autoload)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; my-autoload.el ends here
