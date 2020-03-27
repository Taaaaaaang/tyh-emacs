;; 加速配置。
(require 'init-accelerate)
(require 'emacs-costom)
;; 字体设置
(require 'init-font)
(let (
      ;; 加载的时候临时增大`gc-cons-threshold'以加速启动速度。
      (gc-cons-threshold most-positive-fixnum)
      (gc-cons-percentage 0.6)
      ;; 清空避免加载远程文件的时候分析文件。
      (file-name-handler-alist nil))

  ;; 定义一些启动目录，方便下次迁移修改
  (defvar tyh-emacs-root-dir (file-truename "~/tyh-emacs"))
  (defvar tyh-emacs-config-dir (concat tyh-emacs-root-dir "/config"))
  (defvar tyh-emacs-extension-dir (concat tyh-emacs-root-dir "/extensions"))
  (with-temp-message "" ; 不显示
    (require 'init-generic)
    ;(require 'awesome-pair)
    ;(require 'init-awesome-pair)
    (require 'init-line-number)
    (require 'auto-complete)
    (require 'init-package)
    (require 'init-autopair)
    (require 'init-auto-complete)
    (require 'init-highlight-parentheses)
    )
)
(provide 'init)
