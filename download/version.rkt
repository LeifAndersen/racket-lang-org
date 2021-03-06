#lang plt-web

(require "resources.rkt" "data.rkt")

(define version.txt
  (plain #:site download-site
         (lazy (let ([v (release-version current-release)])
                 (format "~s" `((recent ,v) (stable ,v)))))))
