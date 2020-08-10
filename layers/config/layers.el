;;; -*- lexical-binding: t; -*-

(configuration-layer/declare-layers
 '(;; Core
   (auto-completion :variables
                    auto-completion-enable-snippets-in-popup t
                    auto-completion-enable-help-tooltip t
                    auto-completion-return-key-behavior 'complete
                    auto-completion-enable-sort-by-usage t)

   better-defaults
   git
   (ivy :variables
        ivy-extra-directories nil)
   (org :variables
        org-want-todo-bindings t)
   (shell :variables
          shell-default-shell 'eshell)
   syntax-checking

   ;; Misc
   spacemacs-prettier
   add-node-modules-path
   graphviz
   ranger
   (ibuffer :variables
            ibuffer-group-buffers-by 'projects)
   (colors :variables
           colors-enable-nyan-cat-progress-bar t)

   ;; Markups
   csv
   markdown
   (html :variables web-fmt-tool 'prettier)
   yaml
   terraform

   ;; Languages
   clojure
   emacs-lisp
   osx
   prettier
   react
   (javascript :variables
               javascript-fmt-tool 'prettier
               js2-basic-offset 2
               js-indent-level 2 )
   (typescript :variables
               typescript-backend 'tide
               typescript-linter 'eslint
               typescript-fmt-tool 'prettier
               typescript-fmt-on-save t)
   haskell
   hy  ; I wrote this mode/layer

   (c-c++ :variables
         ;; c-c++-backend 'lsp-ccls
         c-c++-backend 'lsp-cquery
         c-c++-enable-google-style t
         c-c++-enable-google-newline t)

   (python :variables

           python-backend 'lsp
           python-lsp-server 'pyls
           ;; python-lsp-server 'mspyls
           python-pipenv-activate t

           python-test-runner 'pytest
           python-spacemacs-indent-guess nil)
   ))
