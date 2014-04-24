;; .zshrc に tramp に不都合な設定があるらしい
;; 色々調査したが bash なら問題は起こらない
(eval-after-load 'tramp '(setenv "SHELL" "/bin/bash"))
