(defun show-in-terminal()
  (interactive)
  (shell-command (concat "open -a iTerm " default-directory))
  )
