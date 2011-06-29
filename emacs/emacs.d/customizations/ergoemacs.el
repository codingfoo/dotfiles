;; ERGOEMACS
(setenv "ERGOEMACS_KEYBOARD_LAYOUT" "us")

;; load ErgoEmacs keybinding
(load (concat dotemacs-dir "vendor/ergoemacs-keybindings/ergoemacs-mode"))

;; turn on minor mode ergoemacs-mode
(ergoemacs-mode 1)
