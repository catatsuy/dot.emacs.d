(ido-mode 1)
(ido-everywhere 1)
(setq ido-enable-flex-matching t)

(setq ido-ignore-buffers '("\\` " "*Completions*" "*Messages*"))

(when (fboundp 'smex)
  (global-set-key (kbd "M-x") 'smex))
