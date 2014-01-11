(add-hook 'ruby-mode-hook 'flymake-ruby-load)
(add-hook 'ruby-mode-hook '(lambda ()
                             ;; Don't want flymake mode for ruby regions in rhtml files
                             (if (not (null buffer-file-name)) (flymake-mode))
                             ;; エラー行で C-c d するとエラーの内容をミニバッファで表示する
                             (define-key ruby-mode-map (kbd "C-c d") 'credmp/flymake-display-err-minibuf)))
