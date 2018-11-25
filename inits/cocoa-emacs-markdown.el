(defun markdown-preview-file ()
  "run Marked 2 on the current file and revert the buffer"
  (interactive)
  (shell-command
   (format "open -a \"/Applications/Marked 2.app\" %s"
           (shell-quote-argument (buffer-file-name))))
  )
