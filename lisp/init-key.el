(global-set-key (kbd "C-j") nil)

;; 删去光标所在行（在图形界面时可以用 "C-S-<DEL>"，终端常会拦截这个按法)
(global-set-key (kbd "C-j C-k") 'kill-whole-line)
;; 为选中的代码加注释/去注释
(global-set-key (kbd "C-c '") 'comment-or-uncomment-region)

(provide 'init-key)
;;; init-key.el ends here
