;; Font設定
(set-default-font "DejaVu Sans Mono-11")
(set-face-font 'variable-pitch "DejaVu Sans Mono-11")
(set-fontset-font (frame-parameter nil 'font)
                  'japanese-jisx0208
                  '("Takaoゴシック" . "unicode-bmp")
                  )
