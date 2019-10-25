;; C-hをBSに
;; (global-set-key (kbd "C-h") 'backward-delete-char)
(define-key key-translation-map (kbd "C-h") (kbd "<DEL>"))

;; ESC 連打で無効化
(global-set-key (kbd "M-ESC ESC") 'keyboard-quit)

;; to LARGE C-x C-u と to small C-x C-l
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

;; expand-region
(global-set-key (kbd "M-m") 'er/expand-region)

;; open-junk
(global-set-key (kbd "C-x j") 'open-junk-file)

;; recentf
(global-set-key (kbd "C-x C-r") 'recentf-open-files)

;;; C-x C-b をつぶす
(global-set-key (kbd "C-x C-b") 'ido-switch-buffer)

;; neotree
(global-set-key (kbd "C-c n") 'neotree-toggle)

;; windowの移動
(global-set-key (kbd "C-x O") 'previous-multiframe-window)

;; visual-regexp-steroids
(global-set-key (kbd "M-%") 'vr/query-replace)
(global-set-key (kbd "C-M-r") 'vr/isearch-backward)
(global-set-key (kbd "C-M-s") 'vr/isearch-forward)

(global-set-key (kbd "C-x @") (lambda ()
                                (interactive)
                                (split-window-horizontally-n 3)))
