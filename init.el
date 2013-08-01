;;init package system
(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))
(package-initialize)

;;speedbar default open
(require 'sr-speedbar)
(add-hook 'speedbar-mode-hook '(lambda () (linum-mode -1)))
(add-hook 'after-init-hook '(lambda () (sr-speedbar-toggle)))

;;load theme
(require 'color-theme)
(color-theme-monokai)

;;tabbar default open
(add-hook 'after-init-hook '(lambda () (tabbar-ruler-up)))

;;set up frame size
(set-frame-position (selected-frame) 10 10)
(set-frame-width (selected-frame) 140)
(set-frame-height (selected-frame) 50)

;;markdown config
(add-to-list 'auto-mode-alist '("\\.md\\" . gfm-mode))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("9f443833deb3412a34d2d2c912247349d4bd1b09e0f5eaba11a3ea7872892000" default)))
 '(global-auto-revert-mode t)
 '(global-linum-mode t)
 '(global-whitespace-mode nil)
 '(line-number-mode t)
 '(show-trailing-whitespace t)
 '(speedbar-default-position (quote left-right))
 '(speedbar-show-unknown-files t)
 '(speedbar-supported-extension-expressions (quote (".[ch]\\(\\+\\+\\|pp\\|c\\|h\\|xx\\)?" ".tex\\(i\\(nfo\\)?\\)?" ".el" ".emacs" ".l" ".lsp" ".p" ".java" ".js" ".f\\(90\\|77\\|or\\)?" ".ad[abs]" ".p[lm]" ".tcl" ".m" ".scm" ".pm" ".py" ".g" ".s?html" ".ma?k" "[Mm]akefile\\(\\.in\\)?" ".clj" ".json" ".css")))
 '(sr-speedbar-right-side nil)
 '(tabbar-ruler-global-ruler t)
 '(tabbar-ruler-global-tabbar t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
