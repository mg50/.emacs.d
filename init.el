(require 'cask "~/.cask/cask.el")
(cask-initialize)
(require 'pallet)

(mapc 'load (directory-files "~/.emacs.d/customizations" t "^[0-9]+.*\.el$"))

(provide 'init)
(put 'dired-find-alternate-file 'disabled nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(clojure-align-binding-forms
   (quote
    ("let" "when-let" "when-some" "if-let" "if-some" "binding" "loop" "doseq" "for" "with-open" "with-local-vars" "with-redefs" "cmd")))
 '(clojure-defun-indents (quote (context describe it)))
 '(coffee-tab-width 2)
 '(cua-enable-cua-keys nil)
 '(custom-safe-themes
   (quote
    ("d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "57f8801351e8b7677923c9fe547f7e19f38c99b80d68c34da6fa9b94dc6d3297" default)))
 '(electric-indent-mode t)
 '(elm-indent-after-keywords
   (quote
    (("where" 0)
     ("of" 2)
     ("do" 2)
     ("mdo" 2)
     ("rec" 2)
     ("in" 2 0)
     ("{" 2)
     "if" "then" "else" "let")))
 '(elm-indent-offset 2)
 '(elm-indentation-where-post-offset 0)
 '(elm-indentation-where-pre-offset 0)
 '(flymake-gui-warnings-enabled nil)
 '(js-indent-level 2)
 '(jsx-indent-level 2)
 '(magit-diff-use-overlays nil)
 '(magit-use-overlays nil)
 '(purescript-mode-hook
   (quote
    (turn-on-purescript-indent turn-on-purescript-indentation)))
 '(rust-indent-offset 4)
 '(whole-line-or-region-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(flymake-warnline ((t nil)))
 '(vertical-border ((t (:foreground "color-242")))))
(put 'narrow-to-region 'disabled nil)
(put 'downcase-region 'disabled nil)
