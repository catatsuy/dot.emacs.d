(set-default-font "Bitstream Vera Sans Mono-12")
(set-face-font 'variable-pitch "Bitstream Vera Sans Mono-12")
(set-fontset-font
 (frame-parameter nil 'font)
 'japanese-jisx0208
 '("Hiragino Kaku Gothic ProN" . "unicode-bmp"))
(set-fontset-font
 (frame-parameter nil 'font)
 'japanese-jisx0212
 '("Hiragino Kaku Gothic ProN" . "unicode-bmp"))

;; タイトルバーをファイル名にする
(setq frame-title-format (format (if (buffer-file-name) "%%f" "%%b")))
