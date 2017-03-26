;; package.el setting
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)
;;
;(require 'ibuffer)
(global-set-key (kbd "C-x C-b") 'ibuffer)
;;
;;cursor position information
(column-number-mode 1)
;;
;;set the fill-column variable
(setq-default fill-column 80)
;;
;;scroll one line at a time (less "jumpy" than defaults)
;;copy directly from EmacsWiki
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ;; one line at a time
(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse
(setq scroll-step 1) ;; keyboard scroll one line at a time
;;
;;using <right> <left> <up> <down> to navigate between windows
(global-set-key (kbd "C-x w <right>") 'windmove-right )
(global-set-key (kbd "C-x w <left>") 'windmove-left )
(global-set-key (kbd "C-x w <up>") 'windmove-up )
(global-set-key (kbd "C-x w <down>") 'windmove-down )
;;
;;set buffer auto reverted
(global-auto-revert-mode 1)
;;
;;active evil globally
(evil-mode 1)
;;
;;change short-cut for hs-minor-mode
(global-set-key (kbd "C-x c h") 'hs-hide-block)
(global-set-key (kbd "C-x c H") 'hs-hide-all)
(global-set-key (kbd "C-x c s") 'hs-show-block)
(global-set-key (kbd "C-x c S") 'hs-show-all)
(global-set-key (kbd "C-x c t") 'hs-toggle-hiding)
(global-set-key (kbd "C-x c <right>") 'hs-hide-level)
(add-hook 'prog-mode-hook 'hs-minor-mode)
;;
;;set indentation for fortran90
(setq tab-with 2) ;set tab as two spaces; keep the coding style consistent
;;
;;calling ctags to build tags
;(setq path-to-ctags ::/usr/nin/ctags) ;; <- your ctags path in the system here
;(defun create-tags (dir-name)
;  "Create tags files."
;  (interactive "DDirectory: ")
;  (shell-command
;   (format "%s -f TAGS -e -R %s" path-to-ctags (directory-file-name dir-name)))
; )
;;
;;setting for theme
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   (vector "#cccccc" "#f2777a" "#99cc99" "#ffcc66" "#6699cc" "#cc99cc" "#66cccc" "#515151"))
 '(column-number-mode t)
 '(custom-enabled-themes (quote (sanityinc-tomorrow-bright)))
 '(custom-safe-themes
   (quote
    ("bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "938d8c186c4cb9ec4a8d8bc159285e0d0f07bad46edf20aa469a89d0d2a586ea" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" default)))
 '(fci-rule-color "#515151")
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#f2777a")
     (40 . "#f99157")
     (60 . "#ffcc66")
     (80 . "#99cc99")
     (100 . "#66cccc")
     (120 . "#6699cc")
     (140 . "#cc99cc")
     (160 . "#f2777a")
     (180 . "#f99157")
     (200 . "#ffcc66")
     (220 . "#99cc99")
     (240 . "#66cccc")
     (260 . "#6699cc")
     (280 . "#cc99cc")
     (300 . "#f2777a")
     (320 . "#f99157")
     (340 . "#ffcc66")
     (360 . "#99cc99"))))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Ubuntu Mono" :foundry "DAMA" :slant normal :weight normal :height 151 :width normal)))))
