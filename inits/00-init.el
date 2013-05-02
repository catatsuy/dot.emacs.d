;; 起動画面削除
(setq inhibit-startup-message t)

;; 起動画面で recentf を開く
(add-hook 'after-init-hook (lambda()
    (recentf-open-files)
    ))
