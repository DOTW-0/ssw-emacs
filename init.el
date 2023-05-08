;;; init.el --- Load the full configuration -*- lexical-binding: t -*-
;;; Commentary:

;; This file bootstraps the configuration, which is divided into
;; a number of other files.

;;; Code:

;; Produce backtraces when errors occur: can be helpful to diagnose startup issues
;;(setq debug-on-error t)

(require 'package)
(setq package-archives '(
				("gnu"   . "http://mirrors.cloud.tencent.com/elpa/gnu/")
				("melpa" . "http://mirrors.cloud.tencent.com/elpa/melpa/")
				("melpa1" . "https://melpa.org/packages/")))
(package-initialize)


;; Adjust garbage collection thresholds during startup, and thereafter
(let ((normal-gc-cons-threshold (* 20 1024 1024))
      (init-gc-cons-threshold (* 128 1024 1024)))
  (setq gc-cons-threshold init-gc-cons-threshold)
  (add-hook 'emacs-startup-hook
            (lambda () (setq gc-cons-threshold normal-gc-cons-threshold))))


(eval-when-compile
  (require 'use-package))

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
;; (require 'init-benchmarking) ;; Measure startup time
(require 'init-base)
(require 'init-key)
(require 'init-theme)
(require 'init-enhancements)
(require 'init-company)
(require 'init-yasnippet)
(require 'init-lsp)
(require 'init-neotree)
(require 'init-flycheck)
(require 'init-rime)
;; (require 'init-eaf)

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

(provide 'init)
;;; init.el ends here
