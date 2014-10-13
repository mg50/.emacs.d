(define-key input-decode-map "\e[1;2A" [S-up])
(if (equal "xterm" (tty-type))
        (define-key input-decode-map "\e[1;2A" [S-up]))
(defadvice terminal-init-xterm (after select-shift-up activate)
    (define-key input-decode-map "\e[1;2A" [S-up]))

(global-set-key (kbd "<home>") 'mark-sexp) ; I bound C-M-SPC to "home", a.k.a. ^[ [1;2H, on iTerm to make this work
(global-set-key (kbd "C-x C-_") 'comment-or-uncomment-region)
(global-set-key (kbd "M-RET") 'cua-set-rectangle-mark)
(global-set-key (kbd "C-c g") 'magit-status)
(global-set-key (kbd "M-x") 'smex)

(global-set-key (kbd "C-c SPC") 'ace-jump-mode)
(global-set-key (kbd "C-x SPC") 'ace-jump-mode-pop-mark)

(global-set-key (kbd "C-c C-k") 'kill-this-buffer)
(global-set-key (kbd "C-c C-t") 'ansi-term)

(global-set-key (kbd "M-v") 'cua-scroll-down)
(global-set-key (kbd "C-v") 'cua-scroll-up)

(global-set-key (kbd "C-x f") 'find-file-in-project)

(global-set-key (kbd "C-b") 'indent-line-and-newline-up)
(global-set-key (kbd "C-f") 'indent-line-and-newline-down)

(global-set-key (kbd "M--") 'undo-tree-undo)
(global-set-key (kbd "M-=") 'undo-tree-redo)
(global-set-key (kbd "C-x u") 'undo-tree-visualize)

(global-set-key (kbd "ESC <right>") 'next-buffer)
(global-set-key (kbd "ESC <left>") 'previous-buffer)

(global-set-key (kbd "C-x C-m") 'windresize)

(global-set-key (kbd "M-g") 'goto-line)


(add-hook 'term-mode-hook (lambda ()
                            (define-key term-raw-map (kbd "C-z") 'suspend-frame)))

(windmove-default-keybindings)
