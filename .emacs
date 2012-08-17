(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<down>") 'shrink-window)
(global-set-key (kbd "S-C-<up>") 'enlarge-window)


;;; emacs compatability stuff
(aquamacs-autoface-mode -1)
(remove-hook 'text-mode-hook 'auto-detect-wrap)
(tabbar-mode -1)		     ; no tabbar
(tool-bar-mode 0) ; turn off toolbar
(setq special-display-regexps nil)   ; do not open certain buffers in special windows/frames

(add-to-list 'load-path "~/.emacs.d")
(require 'haml-mode)
(require 'scss-mode)
(setq auto-mode-alist (cons '("\\.haml$" . haml-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.scss$" . scss-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.scss.erb$" . scss-mode) auto-mode-alist))
(setq scss-compile-at-save nil)

;;; rhtml mode
(add-to-list 'load-path "~/.emacs.d/rhtml")
(require 'rhtml-mode)

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

(add-to-list 'load-path "~/.emacs.d/feature-mode")
(require 'feature-mode)
(setq auto-mode-alist (cons '("\\.feature$" . feature-mode) auto-mode-alist))

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
