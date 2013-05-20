;; Any files that end in .v should be in verilog mode
(setq auto-mode-alist (cons '("\\.v\\'" . verilog-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.tb\\'" . verilog-mode) auto-mode-alist))

;; Any files in verilog mode shuold have their keywords colorized
(setq verilog-indent-level             4
      verilog-indent-level-module      4
      verilog-indent-level-declaration 4
      verilog-indent-level-behavioral  4
      verilog-indent-level-directive   4
      verilog-case-indent              4
      verilog-auto-newline             nil
      verilog-auto-indent-on-newline   nil
      verilog-tab-always-indent        t
      verilog-auto-endcomments         t
      verilog-minimum-comment-distance 40
      verilog-indent-begin-after-if    t
      verilog-auto-lineup              '())
