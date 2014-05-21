(require 'ucs-normalize)

;; Mac のファイル名の UTF-8 は NFD
(setq file-name-coding-system 'utf-8-hfs)
(setq locale-coding-system 'utf-8)
