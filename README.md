.emacs.d
==================================

＊要 Emacs24 以上

    git clone git://github.com/catatsuy/dot.emacs.d.git .emacs.d

外部パッケージが必要なので初回は `inits/20-package.el` のコメントアウトを外す

elisp を追加したい時は `site-lisp` に突っ込むか `package.el` で入れる

`package.el` で入れられるものは必ずこちらでいれて `inits/20-package.el` に書いておく

`M-x package-list-packages` とやると一覧が見れて `i` で選択， `x` を押すとインストールできる

入れられないものは手動で入れる

* [YaTeX](http://www.yatex.org/)
* [ibus.el](http://www11.atwiki.jp/s-irie/pages/21.html) （Linux 環境のみ）

どちらも Ubuntu なら `apt-get` で入れられるが `site-lisp` に入れるだけなので大して変わらない

機能を追加したい時は適当に番号を付けて inits ディレクトリ以下に追加する

環境依存のものも追加できる

`site-lisp/init-loader.el` を確認すること