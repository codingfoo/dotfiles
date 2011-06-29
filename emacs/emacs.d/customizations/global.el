;;; Generic emacs settings I cannot live without

;; Turn off startup screen
(setq inhibit-startup-message t)

;; remove scroll bar - i turn scrollbar off because it appears in minibuffer
(toggle-scroll-bar -1)
(scroll-bar-mode -1)

;; turn off tool bar
(tool-bar-mode -1)

;; turn off menu bar - I can turn it on if i want to discover new stuff
(menu-bar-mode -1)

;; "y or n" instead of "yes or no"
(fset 'yes-or-no-p 'y-or-n-p)

;; Display line and column numbers
(setq line-number-mode    t)
(setq column-number-mode  t)

;; Prevent the annoying beep on errors
(setq visible-bell t)

;; Turn off cursor blink
(blink-cursor-mode -1)

;; Fontify syntax highlighting
(global-font-lock-mode t)
(setq font-lock-maximum-decoration t)

;; make regions visible
(transient-mark-mode t)

;; for Emacs 23 only. use the system’s trash can when deleting files and foldrs
(setq delete-by-moving-to-trash t)

;; by default, do not display continuation lines, instead, give each line of the text just one screen line
(setq-default truncate-lines t)

;; frame title
(setq frame-title-format "%b")
;; (setq frame-title-format '(buffer-file-name "%f" ("%b"))) ;; full path in title

;; replace selected text when i type
(delete-selection-mode t)

;; show the matching parentheses expression
(show-paren-mode t)
(setq show-paren-style 'parenthesis)
(setq show-paren-delay 1)

;; Default major mode
(setq default-major-mode 'text-mode)

;; mouse wheel fix in emacs.app
(mouse-wheel-mode t)

;; Scrolling
(setq scroll-margin 1                    ; do smooth scrolling, ...
      scroll-conservatively 100000           ; ... the defaults ...
      scroll-up-aggressively 0.01            ; ... are very ...
      scroll-down-aggressively 0.01)         ; ... annoying

;; Clipboard
(setq x-select-enable-clipboard t        ; copy-paste should work ...
      interprogram-paste-function            ; ...with...
      'x-cut-buffer-or-selection-value)      ; ...other X clients