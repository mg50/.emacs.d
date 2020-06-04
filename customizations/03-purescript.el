;;(require 'psci)
;; (add-hook 'purescript-mode-hook 'inferior-psci-mode)

(require 'psc-ide)

(defun psc-ide-rebuild-and-type ()
  (interactive)
  (psc-ide-rebuild)
  (psc-ide-show-type 0))

(add-to-list 'auto-mode-alist '("\\.purs\\'" . purescript-mode))

(add-hook 'purescript-mode-hook
  (lambda ()
    (company-mode)
    (psc-ide-mode)
    (flycheck-mode)
    (turn-on-purescript-indentation)
    (define-key purescript-mode-map (kbd "C-c C-t") 'psc-ide-rebuild-and-type)
    (inferior-psci-mode)))
