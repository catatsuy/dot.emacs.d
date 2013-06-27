;; YaTeXのもろもろの設定
(setq YaTeX-kanji-code 4)
(setq auto-mode-alist
      (cons (cons "\\.tex$" 'yatex-mode) auto-mode-alist))
(autoload 'yatex-mode "yatex" "Yet Another LaTeX mode" t)
(setq YaTeX-use-LaTeX2e t)
(setq YaTeX-use-AMS-LaTeX t)

(setq YaTeX-inhibit-prefix-letter nil)

;; 自動改行を切る
(add-hook ' yatex-mode-hook '(lambda () (auto-fill-mode -1)))

; 野鳥セクションのハイライトの設定．
; \sectionの色の設定．
;(setq YaTeX-hilit-sectioning-face '(light時のforecolor/backcolor dark時のforecolor/backcolor))
(setq YaTeX-hilit-sectioning-face '(darkblue/LightGray LightGray/Black))
; sectionの階層が変化する時の色の変化の割合（パーセント）
;(setq YaTeX-hilit-sectioning-attenuation-rate '(light時の割合/dark時の割合))
(setq YaTeX-hilit-sectioning-attenuation-rate '(0 0))

;; flyspell-mode 起動
;; (add-hook 'yatex-mode-hook 'flyspell-mode)
;; (custom-set-variables
;; '(flyspell-auto-correct-binding [(control ?\:)]))
