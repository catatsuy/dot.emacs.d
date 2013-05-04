;; 対応する括弧をハイライト
(show-paren-mode t)

;; 編集時 buffer 再読み込み
(global-auto-revert-mode 1)

;; 補完時に大文字小文字を区別しない
(setq completion-ignore-case t)
(setq read-file-name-completion-ignore-case t)

;; シンボリックリンクを開くときの質問省略
(setq vc-follow-symlinks t)

;; linum-mode をいじって Emacs を高速化
(setq linum-delay t)
(defadvice linum-schedule (around my-linum-schedule () activate)
  (run-with-idle-timer 0.2 nil #'linum-update-current))
