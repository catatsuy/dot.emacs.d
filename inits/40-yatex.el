;; YaTeXのもろもろの設定
(setq YaTeX-kanji-code 4)
(setq auto-mode-alist
      (cons (cons "\\.tex$" 'yatex-mode) auto-mode-alist))
(autoload 'yatex-mode "yatex" "Yet Another LaTeX mode" t)
(setq tex-command "platex")
(setq dvi2-command "xdvi %s.dvi")
(setq dviprint-command-format "dvipdfmx %s.dvi")
(setq YaTeX-use-LaTeX2e t)
(setq YaTeX-use-AMS-LaTeX t)

(setq YaTeX-inhibit-prefix-letter nil)

;; 自動改行を切る
(add-hook ' yatex-mode-hook '(lambda () (auto-fill-mode -1)))
