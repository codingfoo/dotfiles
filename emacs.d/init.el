;;; init.el

;; "Emacs outshines all other editing software in approximately the
;; same way that the noonday sun does the stars. It is not just bigger
;; and brighter; it simply makes everything else vanish."
;; -Neal Stephenson, "In the Beginning was the Command Line"


;; Rename your ~/.emacs to ~/.emacs.d/init.el, then you won't need your ~/.emacs any more

;; Specific customizations can be added based on emacsen, user, platform, or host: but should be avoided.


;; Load path
(setq dotemacs-dir (file-name-directory
                    (or (buffer-file-name) load-file-name)))
(let ((default-directory dotemacs-dir))
  (add-to-list 'load-path default-directory))
(add-to-list 'load-path (concat dotemacs-dir "vendor"))


;; CUSTOMIZATIONS
(load "customizations/global")
(load "customizations/defuns")
(load "customizations/bindings")
(load "customizations/recentf")
(load "customizations/saveplace")
(load "customizations/uniquify")
(load "customizations/autosave")
(load "customizations/backup")
(load "customizations/misc")
(load "customizations/utf-8")
(load "customizations/tabs")
(load "customizations/diff")
(load "customizations/tramp")
;(load "customizations/")
;(load "customizations/")


;; Third Party Libraries
(load "customizations/ergoemacs")
(vendor 'color-theme)
(vendor 'full-ack)
(vendor 'yasnippet)
(vendor 'icicles)
(vendor 'csharp)
(vendor 'autopair)

;; where emacs stores settings from built in customization ui
(setq custom-file (concat dotemacs-dir "custom.el"))
(load custom-file 'noerror )


;; Enable a backtrace when problems occur
;(setq debug-on-error t)

;(provide 'init)