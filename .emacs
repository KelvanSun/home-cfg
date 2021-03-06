(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(ecb-options-version "2.40")
 '(nil nil t)
 '(show-paren-mode t)
 '(tool-bar-mode nil))
;;(require 'cedet)
;;(global-ede-mode 1)
;;(semantic-load-enable-code-helpers)
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:stipple nil :background "DarkSlateGray" :foreground "palegreen" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "unknown" :family "Ubuntu Mono")))))

;; 主题设置 
(require 'color-theme)			
(color-theme-initialize)
(if(window-system)
	(color-theme-gnome2)
	(color-theme-arjen)
)
;;(load-theme 'wheatgrass t)
;; 去掉启动欢迎界面
(setq inhibit-startup-message t)
;; 不显示滚动条
(scroll-bar-mode 0)
;; 括号匹配时显示另外一边的括号，而不是烦人的跳到另一个括号
(show-paren-mode t)
(setq show-paren-style 'parentheses)
;;不要生成临时文件
(setq-default make-backup-files nil)
;;光标靠近鼠标的时候，让鼠标自动让开，别挡住视线
(mouse-avoidance-mode 'animate)
(defalias 'yes-or-no-p 'y-or-n-p)
;; 开启行号
(global-linum-mode 1)
;; 个人信息设置
(setq user-full-name "Kelvan Sun")
(setq user-mail-address "kelvan.sun@gmail.com")

;; 设置预览所用的WWW浏览器
(setq browse-url-generic-program "firefox")

(setq inferior-lisp-program "/usr/bin/sbcl")
(add-to-list 'load-path "/usr/share/emacs/site-lisp/slime/")
(require 'slime)
(slime-setup)

;; 配置git-emacs
;;(add-to-list 'load-path "~/.emacs.d/git-emacs/")
;;(require 'git-emacs)

;;(global-set-key [C-f5] 'git-commit-all)
;;(global-set-key [C-f6] 'git-status)
;; 开发环境设置
(add-hook 'c++-mode-hook
	  '(lambda()
	     (c-set-style "k&r")))

(add-hook 'gdb-mode-hook '(lambda()
			    (global-set-key[(f5)] 'gud-go)
			    (global-set-key[(f7)] 'gud-step)
			    (global-set-key[(f8)] 'gud-next)
			    (setq gdb-many-windows 1)))
(setq split-height-threshold 0)
;;(setq split-width-threshold nil)

;; config auto-complete
(add-to-list 'load-path "~/.emacs.d")
(require 'auto-complete-config)
(ac-config-default)
(setq ecb-tip-of-the-day nil)

(global-set-key [M-left] 'windmove-left)
(global-set-key [M-right] 'windmove-right)
(global-set-key [M-up] 'windmove-up)
(global-set-key [M-down] 'windmove-down)