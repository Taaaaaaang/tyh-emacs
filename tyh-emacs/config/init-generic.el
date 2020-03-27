;(setq initial-buffer-choice t)
;(run-with-timer 1 nil #'(lambda () (bury-buffer)))

(setq custom-file "~/tyh-emacs/config/emacs-custom.el")
(fset 'yes-or-no-p 'y-or-n-p)           ;以 y/n代表 yes/no
(transient-mark-mode 1)                 ;标记高亮
(global-subword-mode 1)                 ;Word移动支持 FooBar 的格式
(setq-default comment-style 'indent)    ;设定自动缩进的注释风格
(setq default-major-mode 'text-mode)    ;设置默认地主模式为TEXT模式
(setq mouse-yank-at-point t)            ;粘贴于光标处,而不是鼠标指针处
(setq x-select-enable-clipboard t)      ;支持emacs和外部程序的粘贴
(setq inhibit-compacting-font-caches t) ;使用字体缓存，避免卡顿
(setq profiler-report-cpu-line-format ;让 profiler-report 第一列宽一点
      '((100 left)
        (24 right ((19 right)
                   (5 right)))))
(setq profiler-report-memory-line-format
      '((100 left)
        (19 right ((14 right profiler-format-number)
                   (5 right)))))
(setq frame-resize-pixelwise t) ;设置缩放的模式,避免Mac平台最大化窗口以后右边和下边有空隙

;; 不显示 *scratch*
(defun remove-scratch-buffer ()
  (if (get-buffer "*scratch*")
      (kill-buffer "*scratch*")))
(add-hook 'after-change-major-mode-hook 'remove-scratch-buffer)

(provide 'init-generic)
