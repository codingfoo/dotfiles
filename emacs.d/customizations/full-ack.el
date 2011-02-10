;;; ack > grep

;(defun ack-default-directory (pattern &optional regexp directory)
;  (interactive (ack-interactive))
;  (ack pattern regexp default-directory))

(autoload 'ack-same "full-ack" nil t)
(autoload 'ack "full-ack" nil t)
(autoload 'ack-find-same-file "full-ack" nil t)
(autoload 'ack-find-file "full-ack" nil t)

(set 'ack-executable (executable-find "~/.bin/ack"))