;;; Pretty colors

(require 'color-theme)
(color-theme-initialize)
(setq color-theme-is-global t)
(load-file (concat dotemacs-dir "/vendor/color-theme/themes/color-theme-twilight.el"))
(color-theme-twilight)