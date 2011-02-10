;; Put backup files (ie foo~) in one place too. (The backup-directory-alist
;; list contains regexp=>directory mappings; filenames matching a regexp are
;; backed up in the corresponding directory. Emacs will mkdir it if necessary.)
(defvar backup-dir (concat dotemacs-dir "/.tmp/backups/"))

(setq backup-directory-alist
   `((".*" . , backup-dir)))
