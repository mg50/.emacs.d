(add-hook 'clojure-mode-hook 'paredit-mode)
(add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)
(add-hook 'clojure-mode-hook 'cider-mode)

(eval-after-load 'cider-mode
  '(define-key cider-mode-map (kbd "C-c C-l") 'save-buffer-and-cider-load-current-buffer))

(add-to-list 'auto-mode-alist '("\\.clj$'" . clojure-mode))

(defun save-buffer-and-cider-load-current-buffer ()
  (interactive)
  (save-buffer)
  (cider-load-current-buffer))
