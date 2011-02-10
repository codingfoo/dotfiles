;; Partial Completion mode implements a more powerful kind of completion that can complete multiple words in parallel. 
;; For example, it can complete the command name abbreviation p-b into print-buffer, 
;; because no other command starts with two words whose initials are `p' and `b'.
(partial-completion-mode t)

(setq completion-ignore-case t           ; ignore case when completing...
  read-file-name-completion-ignore-case t) ; ...filenames too


;; text mode defaults
(add-hook 'text-mode-hook 'turn-on-flyspell)

;; c mode defaults
(setq c-default-style '((other . "bsd")))


;; Associate modes with file extensions
(add-to-list 'auto-mode-alist '("COMMIT_EDITMSG$" . diff-mode))
(add-to-list 'auto-mode-alist '("\\.css$" . css-mode))
(add-to-list 'auto-mode-alist '("\\.ya?ml$" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.js\\(on\\)?$" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.xml$" . nxml-mode))
