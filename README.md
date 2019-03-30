# .emacs.d

    git clone https://github.com/catatsuy/dot.emacs.d.git ~/.emacs.d
    # or
    git clone ssh://github.com/catatsuy/dot.emacs.d.git ~/.emacs.d


## 設計思想

  * [init-loader.el と package.el を導入して快適 Emacs ライフ - Qiita](http://qiita.com/catatsuy/items/5f1cd86e2522fd3384a0)
  * [これが今の私の Emacs の設定です - Qiita](http://qiita.com/catatsuy/items/55d50d13ebc965e5f31e)


## Go 環境設定

Go 自体の設定は終わっていること前提

    go get -u golang.org/x/tools/cmd/goimports
    go get -u github.com/rogpeppe/godef
    go get -u golang.org/x/lint/golint

## elisp の追加

elisp を追加したい時は `site-lisp` に突っ込むか `package.el` で入れる

入れられないものは手動で入れる

  * [YaTeX](https://www.yatex.org/)
