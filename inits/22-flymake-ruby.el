(add-hook 'ruby-mode-hook 'flymake-ruby-load)
(add-hook 'ruby-mode-hook '(lambda ()
                             ;; Don't want flymake mode for ruby regions in rhtml files
                             (if (not (null buffer-file-name)) (flymake-mode))
                             ;; エラー行で C-c d するとエラーの内容をミニバッファで表示する
                             (define-key ruby-mode-map (kbd "C-c d") 'credmp/flymake-display-err-minibuf)))

;; エラー内容を mini buffer で表示する
;; cf: http://d.hatena.ne.jp/gan2/20080702/1214972962
(defun credmp/flymake-display-err-minibuf ()
  "Displays the error/warning for the current line in the minibuffer"
  (interactive)
  (let* ((line-no             (flymake-current-line-no))
         (line-err-info-list  (nth 0 (flymake-find-err-info flymake-err-info line-no)))
         (count               (length line-err-info-list)))
    (while (> count 0)
      (when line-err-info-list
        (let* ((file       (flymake-ler-file (nth (1- count) line-err-info-list)))
               (full-file  (flymake-ler-full-file (nth (1- count) line-err-info-list)))
               (text (flymake-ler-text (nth (1- count) line-err-info-list)))
               (line       (flymake-ler-line (nth (1- count) line-err-info-list))))
          (message "[%s] %s" line text)
          )
        )
      (setq count (1- count)))))
