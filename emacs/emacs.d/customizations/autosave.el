;; move auto-save-list folder
(setq auto-save-list-file-prefix (concat dotemacs-dir "/.tmp/auto-save-list/"))

;; Put autosave files (ie #foo#) in one place, *not*
;; scattered all over the file system!
(defvar autosave-dir
  (concat dotemacs-dir "/.tmp/autosaves/"))

(make-directory autosave-dir t)

(setq auto-save-file-name-transforms
   `((".*" , autosave-dir t)))
