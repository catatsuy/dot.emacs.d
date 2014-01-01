;; Tab を使う
(defun my/tab-t-hook ()
  (interactive)
  (setq tab-width 2)
  (setq indent-tabs-mode t))

;; Tab を無効にする
(defun my/tab-nil-hook ()
  (interactive)
  (setq tab-width 4)
  (setq indent-tabs-mode nil))

(provide 'my-functions)
