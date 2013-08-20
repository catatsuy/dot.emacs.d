;; インデントをスペースに
(defun my-c-mode-hook ()
  (c-set-style "linux")
  (setq tab-width 4)
  (setq c-basic-offset tab-width))

(defun my-tab-t-mode-hook ()
  (setq tab-width 4)
  (setq indent-tabs-mode t))

(add-hook 'c-mode-hook 'my-c-mode-hook)

(setq-default tab-width 4 indent-tabs-mode nil)
(setq-default indent-tab-mode nil)
