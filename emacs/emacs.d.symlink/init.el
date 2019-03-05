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


(load-theme 'tango-dark t)

(require 'better-defaults)

(set-frame-font "Monaco 18" nil t)


(setq org-agenda-files '("~/b0m00jo/"))

'(progn
    (add-to-list 'org-structure-template-alist
'("t" "* Daily-?
|  Time | Plan | Revised | Notes |
|-------+------+---------+-------|      
|  6:00 |      |         |       |
|  6:30 |      |         |       |
|  7:00 |      |         |       |
|  7:30 |      |         |       |
|  8:00 |      |         |       |
|  8:30 |      |         |       |
|  9:00 |      |         |       |
|  9:30 |      |         |       |
| 10:00 |      |         |       |
| 10:30 |      |         |       |
| 11:00 |      |         |       |
| 11:30 |      |         |       |
| 12:00 |      |         |       |
| 12:30 |      |         |       |
|  1:00 |      |         |       |
|  1:30 |      |         |       |
|  2:00 |      |         |       |
|  2:30 |      |         |       |
|  3:00 |      |         |       |
|  3:30 |      |         |       |
|  4:00 |      |         |       |
|  4:30 |      |         |       |
|  5:00 |      |         |       |
|  5:30 |      |         |       |
|  6:00 |      |         |       |
|--------------------------------|")))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

