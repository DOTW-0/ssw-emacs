;;; init-flycheck.el --- Load the full configuration -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:
(use-package flycheck
  :ensure t
  :config
  (setq truncate-lines nil) ; 如果单行信息很长会自动换行
  :hook
  (prog-mode . flycheck-mode))

(provide 'init-flycheck)
;;; init-flycheck.el ends here
