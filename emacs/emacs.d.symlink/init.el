; From https://github.com/technomancy/emacs-starter-kit/
(defun bm-reinit-libs ()
  (interactive)
  (let ((generated-autoload-file (concat user-emacs-directory "my-autoload.el")))
    (dolist (d (directory-files (concat user-emacs-directory "lib") t "^[^\.]"))
      (dolist (f (directory-files d t "\\.el$"))
	      (byte-compile-file f))
      (update-directory-autoloads d))))

(dolist (l (directory-files (concat user-emacs-directory "lib") nil "^[^\.]"))
  (add-to-list 'load-path (concat user-emacs-directory "lib/" l))
  (autoload (intern l) (concat l ".el")))

(when (not (file-exists-p (concat user-emacs-directory "my-autoload.el")))
  (bm-reinit-libs))

(load (concat user-emacs-directory "my-autoload.el"))


; Customizations
(add-to-list 'custom-theme-load-path (concat user-emacs-directory "lib/" "solari
zed-emacs"))
