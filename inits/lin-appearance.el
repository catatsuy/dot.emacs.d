;; Font設定
(set-default-font "DejaVu Sans Mono-10")
(set-face-font 'variable-pitch "DejaVu Sans Mono-10")
(set-fontset-font (frame-parameter nil 'font)
                  'japanese-jisx0208
                  '("Takaoゴシック" . "unicode-bmp")
                  )
