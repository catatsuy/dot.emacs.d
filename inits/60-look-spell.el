(defun my-ac-look ()
  (interactive)
  (let ((search-word (thing-at-point 'word)))
    (with-temp-buffer
      (call-process-shell-command "look" nil t 0 search-word)
      (split-string-and-unquote (buffer-string) "\n"))))

(defun ac-complete-look ()
  (interactive)
  (let ((ac-menu-height 50)
        (ac-candidate-limit t))
  (auto-complete '(ac-source-look))))

(defvar ac-source-look
  '((candidates . my-ac-look)
    (requires . 2)))  ;; 2文字以上ある場合にのみ対応させる

(global-set-key (kbd "M-h") 'ac-complete-look)
