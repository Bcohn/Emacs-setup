

; marmalade package installer. use to install solarized theme.
; note: mercurial is also necessary for solarized 
(require 'package)
(add-to-list 'package-archives 
    '("marmalade" .
      "http://marmalade-repo.org/packages/"))
(package-initialize)

(load-theme 'solarized-dark t)


; path where settings files are kept
(add-to-list 'load-path "~/.emacs.d/settings")

;; global config variables
(setq plugin-path "~/.emacs.d/plugins/")
(setq elget-path "~/.emacs.d/el-get/")

;; various generic/global config
(require 'custom-functions)
(require 'general-settings)


;---------------;
;;; Utilities ;;;
;---------------;

;; Popup
(include-elget-plugin "popup")
(require 'popup)

;; Websocket
(include-plugin "websocket")
(require 'websocket)

;; Request
(include-plugin "request")
(require 'request)

;; Auto complete
(require 'auto-complete-settings)

   
(add-to-list 'load-path "/home/bjoseph/.emacs.d/pydoc-info")
(require 'pydoc-info)
;----------------------;
;;; Standalone tools ;;;
;----------------------;

;; emacs speaks statistics
(load "/home/bjoseph/.emacs.d/ESS/lisp/ess-site")

;; el-get
(include-plugin "el-get")
(require 'el-get)

;; Git
(include-plugin "magit")
(require 'magit)


;-----------;
;;; Modes ;;;
;-----------;

;; Ido mode
(require 'ido)
(ido-mode 1)

;; MuMaMo
(require 'mumamo-settings)

;; Markdown mode
(require 'markdown-settings)

;; Python mode 
'(require 'python-settings)

;; LaTeX and Auctex
;(require 'latex-settings)

;; SCSS Mode
(require 'scss-settings)


;---------------------------------------------------------------------
;; Put auto 'custom' changes in a separate file (this is stuff like
;; custom-set-faces and custom-set-variables)
;(load 
 ;(setq custom-file (expand-file-name "settings/custom.el" user-emacs-directory))
 ;'noerror)














