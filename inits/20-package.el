(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

(require 'cl)

(defvar installing-package-list
  '(
    ;; ここに使っているパッケージを書く。
    php-mode
    scala-mode
    markdown-mode
    scss-mode
    haskell-mode
    js2-mode
    ruby-block
    google-c-style
    yaml-mode
    flymake-easy
    flymake-php
    flymake-ruby
    rbenv
    yasnippet
    migemo
    open-junk-file
    recentf-ext
    ))

(let ((not-installed (loop for x in installing-package-list
                            when (not (package-installed-p x))
                            collect x)))
  (when not-installed
    (package-refresh-contents)
    (dolist (pkg not-installed)
        (package-install pkg))))
