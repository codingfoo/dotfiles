;; Remember position in files between sessions
(setq save-place-file (concat dotemacs-dir "/.tmp/.emacs-places"))

(require 'saveplace)

(setq-default save-place t)
