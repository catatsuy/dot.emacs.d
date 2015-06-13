(defun markdown-preview-file ()
  "run Marked on the current file and revert the buffer"
  (interactive)
  (shell-command
   (format "open -a '/Applications/Marked 2.app' %s"
           (shell-quote-argument (buffer-file-name))))
  )

(global-set-key (kbd "C-c m") 'markdown-preview-file)
