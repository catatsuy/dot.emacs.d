(defun show-in-terminal()
  (interactive)
  (shell-command (concat "gnome-terminal " default-directory))
  )
