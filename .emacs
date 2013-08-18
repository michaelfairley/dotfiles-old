(require 'ido)
(ido-mode t)
(setq ido-enable-flex-matching t)

(menu-bar-mode -1)

(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<down>") 'shrink-window)
(global-set-key (kbd "S-C-<up>") 'enlarge-window)

(when (not (featurep 'aquamacs))
  (require 'package)
  (add-to-list 'package-archives
               '("melpa" . "http://melpa.milkbox.net/packages/") t)
  (package-initialize)
  (unless (package-installed-p 'scala-mode2)
    (package-refresh-contents) (package-install 'scala-mode2))
)

;;; emacs compatability stuff
(when (featurep 'aquamacs)
  (aquamacs-autoface-mode -1)
  (remove-hook 'text-mode-hook 'auto-detect-wrap)
  (tabbar-mode -1)		     ; no tabbar
  (tool-bar-mode 0) ; turn off toolbar
  (setq special-display-regexps nil)   ; do not open certain buffers in special windows/frames
  )


(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(add-to-list 'load-path "~/.emacs.d")
(require 'haml-mode)
(require 'scss-mode)
(setq auto-mode-alist (cons '("\\.haml$" . haml-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.scss$" . scss-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.scss.erb$" . scss-mode) auto-mode-alist))
(setq scss-compile-at-save nil)
(setq auto-mode-alist (cons '("\\.css.erb$" . css-mode) auto-mode-alist))

;; ;;; rhtml mode
;; (add-to-list 'load-path "~/.emacs.d/rhtml")
;; (require 'rhtml-mode)
(require 'ido)
(ido-mode t)
(setq ido-enable-flex-matching t)

(require 'yaml-mode)

(setq auto-mode-alist (cons '("\\.yml$" . yaml-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.rake$" . ruby-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("Rakefile$" . ruby-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.ru$" . ruby-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("Gemfile" . ruby-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.builder$" . ruby-mode) auto-mode-alist))

(setq js-indent-level 2)
(setq css-indent-offset 2)
(setq c-basic-offset 2)
(setq tab-width 2)

(require 'slim-mode)
(setq auto-mode-alist (cons '("\\.slim$" . slim-mode) auto-mode-alist))

(require 'coffee-mode)
(setq auto-mode-alist (cons '("\\.coffee$" . coffee-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.coffee.erb$" . coffee-mode) auto-mode-alist))

(setq auto-mode-alist (cons '("\\.js.erb$" . javascript-mode) auto-mode-alist))

(require 'magit)

(global-hi-lock-mode 1)

(require 'markdown-mode)
(setq auto-mode-alist (cons '("\\.md$" . markdown-mode) auto-mode-alist))

(global-auto-revert-mode 1)
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(require 'textmate)
(require 'peepopen)
(textmate-mode)
(setq ns-pop-up-frames nil)

(require 'rspec-mode)

(autoload 'puppet-mode "puppet-mode" "Major mode for editing puppet manifests")
(add-to-list 'auto-mode-alist '("\\.pp$" . puppet-mode))

(setq ruby-deep-indent-paren nil)

(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("1e7e097ec8cb1f8c3a912d7e1e0331caeed49fef6cff220be63bd2a6ba4cc365" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
