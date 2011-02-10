;; REPLACEMENT KEYBINDINGS
;; Help should search more than just commands
(global-set-key (kbd "C-h a") 'apropos)

;; Auto indentation
(define-key global-map (kbd "RET") 'newline-and-indent)


;; NEW KEYBINDINGS
;; Jump to a definition in the current file. (This is awesome.)
(global-set-key (kbd "C-c i") 'icicle-imenu)

;; Align your code in a pretty way.
(global-set-key (kbd "C-c \\") 'align-regexp)

;; Perform general cleanup.
(global-set-key (kbd "C-c c") 'cleanup-buffer)