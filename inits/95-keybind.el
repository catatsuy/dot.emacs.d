;; C-hをBSに
(global-set-key (kbd "C-h") 'backward-delete-char)

;; 行番号を指定して移動する機能をM-zに割り当て
(global-set-key (kbd "M-z") 'goto-line)

;; ESC 連打で無効化
(global-set-key (kbd "M-ESC ESC") 'keyboard-quit)

;; to LARGE C-x C-u と to small C-x C-l
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

;; expand-region
(global-set-key (kbd "C-,") 'er/expand-region)
(global-set-key (kbd "C-M-,") 'er/contract-region)

;; highlight-symbol
(global-unset-key (kbd "M-q"))
(smartrep-define-key
    global-map "M-q" '(("M-q" . 'highlight-symbol-next)
                       ("h"   . 'highlight-symbol-at-point)
                       ("n"   . 'highlight-symbol-next)
                       ("p"   . 'highlight-symbol-prev)
                       ("o"   . 'highlight-symbol-occur)
                       ("d"   . 'highlight-symbol-remove-all)
                       ("r"   . 'highlight-symbol-query-replace)))

;; multiple-cursors
(global-set-key (kbd "<C-M-return>") 'mc/edit-lines)
(smartrep-define-key
    global-map "C-." '(("C-n" . 'mc/mark-next-like-this)
                       ("C-p" . 'mc/mark-previous-like-this)
                       ("*"   . 'mc/mark-all-like-this)))

;; open-junk
(global-set-key (kbd "C-x j") 'open-junk-file)

;; recentf
(global-set-key (kbd "C-x C-r") 'recentf-open-files)

;; Google Translate
(global-set-key (kbd "C-x t") 'google-translate-at-point)
(global-set-key (kbd "C-x T") 'google-translate-query-translate)

;;; C-x C-b をつぶす
(global-set-key (kbd "C-x C-b") 'buffer-menu)

;; look で英単語を探す
(global-set-key (kbd "M-h") 'ac-complete-look)

;;; window の移動
(global-set-key (kbd "C-z") 'other-window-or-split)
(global-set-key (kbd "C-S-z") 'previous-multiframe-window)
