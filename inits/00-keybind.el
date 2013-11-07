;; C-hをBSに
(global-set-key "\C-h" 'backward-delete-char)

;; 行番号を指定して移動する機能をM-zに割り当て
(global-set-key "\M-z" 'goto-line)

;; ESC 連打で無効化
(global-set-key (kbd "M-ESC ESC") 'keyboard-quit)

;; to LARGE C-x C-u と to small C-x C-l
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
