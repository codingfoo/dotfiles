;; Save a list of recent files visited.
(setq recentf-save-file (concat dotemacs-dir "/.tmp/.recentf"))
(recentf-mode 1)
(setq recentf-max-menu-items 25)

(require 'recentf)