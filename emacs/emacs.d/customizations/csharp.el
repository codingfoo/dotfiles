(autoload 'csharp-mode "csharp-mode" "Major mode for editing C# code." t)

(setq auto-mode-alist
  (append '(("\\.cs$" . csharp-mode)) auto-mode-alist))
  (defun my-csharp-mode-fn ()
     "function that runs when csharp-mode is initialized for a buffer."
  )
  (add-hook  'csharp-mode-hook 'my-csharp-mode-fn t)
