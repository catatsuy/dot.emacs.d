;; C-hをBSに
(global-set-key "\C-h" 'backward-delete-char)
;; isearch でも使える
;; (keyboard-translate ?\C-h ?\C-?)
;; (global-set-key "\C-h" nil)

;; 行番号を指定して移動する機能をM-zに割り当て
(global-set-key "\M-z" 'goto-line)

;; to LARGE C-x C-u と to small C-x C-l
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
