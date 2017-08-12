.emacs.d
==================================

＊要 Emacs24 以上

    git clone git://github.com/catatsuy/dot.emacs.d.git ~/.emacs.d


## 設計思想

  * [init-loader.el と package.el を導入して快適 Emacs ライフ - Qiita](http://qiita.com/catatsuy/items/5f1cd86e2522fd3384a0)
  * [これが今の私の Emacs の設定です - Qiita](http://qiita.com/catatsuy/items/55d50d13ebc965e5f31e)


## Go 環境設定

Go 自体の設定は終わっていること前提

    go get golang.org/x/tools/cmd/goimports
    go get github.com/rogpeppe/godef
    go get github.com/nsf/gocode

## elisp の追加

elisp を追加したい時は `site-lisp` に突っ込むか `package.el` で入れる

`package.el` で入れられるものは必ずこちらでいれて `init.el` に書いておく

`M-x package-list-packages` とやると一覧が見れて `i` で選択， `x` を押すとインストールできる

入れられないものは手動で入れる

  * [YaTeX](https://www.yatex.org/)
  * [Typescript](https://blogs.msdn.microsoft.com/interoperability/2012/10/01/sublime-text-vi-emacs-typescript-enabled/)
