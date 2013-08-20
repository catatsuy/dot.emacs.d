;; インデントをスペースに
(defun my-c-mode-hook ()
  (c-set-style "linux")
  (setq c-basic-offset tab-width))

(add-hook 'c-mode-hook 'my-c-mode-hook)

(setq-default tab-width 4 indent-tabs-mode nil)
