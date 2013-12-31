;; 自動保存
(when (require 'recentf-ext nil t)
  (setq recentf-max-saved-items 2000)
  (setq recentf-exclude '(".recentf"))
  (setq recentf-auto-cleanup 10)
  (setq recentf-auto-save-timer (run-with-idle-timer 30 t 'recentf-save-list))
  (recentf-mode 1))

;; 起動画面削除
(setq inhibit-startup-message t)

;; 起動画面で recentf を開く
(add-hook 'after-init-hook (lambda()
    (recentf-open-files)
    ))
