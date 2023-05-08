(use-package company
  :ensure t
  :init (global-company-mode)
  :config
  ; 只需敲 1 个字母就开始进行自动补全
  (setq company-minimum-prefix-length 1)
  (setq company-tooltip-align-annotations t)
  (setq company-idle-delay 0.0)
  ;; 给选项编号 (按快捷键 M-1、M-2 等等来进行选择).
  (setq company-show-quick-access t)
  (setq company-selection-wrap-around t)
  ; 根据选择的频率进行排序，读者如果不喜欢可以去掉
  (setq company-transformers '(company-sort-by-occurrence)))


(use-package company-tabnine
  :ensure t
  :init (add-to-list 'company-backends #'company-tabnine))

(provide 'init-company)
;;; init-company.el ends here
