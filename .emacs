(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "文泉驿等宽微米黑" :foundry "unknown" :slant normal :weight normal :height 98 :width normal)))))

;; 设置package包管理器
(require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)

;; 主题设置 
;;(require 'color-theme)			
;;(color-theme-arjen)
(load-theme 'wheatgrass t)
;; 去掉启动欢迎界面
(setq inhibit-startup-message t)
;; 不显示工具条
(tool-bar-mode 0)
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

(setq inferior-lisp-program "/usr/bin/sbcl")
(add-to-list 'load-path "/usr/share/emacs/site-lisp/slime/")
(require 'slime)
(slime-setup)
