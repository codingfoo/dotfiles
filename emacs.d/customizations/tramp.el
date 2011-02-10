;; tramp settings
(setq tramp-persistency-file-name (concat dotemacs-dir "/.tmp/tramp"))

(require 'tramp)
(setq tramp-default-method "ssh")

(add-to-list 'backup-directory-alist
                  (cons tramp-file-name-regexp nil))

(setq tramp-auto-save-directory nil)
