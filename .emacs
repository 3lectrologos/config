(modify-frame-parameters nil '((wait-for-wm . nil)))
(setq default-frame-alist
      '((top . 0) (left . 0)
        (width . 80) (height . 100)))

(setq initial-frame-alist '((top . 10) (left . 0)))

;; Indents and space only
(setq c-basic-indent 2)
(setq tab-width 4)
(setq indent-tabs-mode nil)

;; Color theme
(add-to-list 'load-path "/home/alkis/.emacs.d/")
(require 'color-theme)
(require 'zenburn)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-zenburn)))

;; Font
(set-frame-font "Dejavu Sans Mono 8")

;; Show column-number in the mode line
(column-number-mode 1)

;; Show line numbers
(global-linum-mode 1)

(add-hook 'LaTeX-mode-hook (lambda ()
  (push 
    '("Latexmk" "latexmk -pdf %s" TeX-run-TeX nil t
      :help "Run Latexmk on file")
    TeX-command-list)))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t))
