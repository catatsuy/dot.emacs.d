;; vc-mode 無効
;; git とかいじらないし遅い
;; vcを起動しないようにする
(custom-set-variables '(vc-handled-backends nil))

;; 不要なhookを外す
(remove-hook 'find-file-hook 'vc-find-file-hook)
(remove-hook 'kill-buffer-hook 'vc-kill-buffer-hook)
