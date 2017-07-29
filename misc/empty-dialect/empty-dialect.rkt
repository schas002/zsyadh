#lang s-exp racket/base

(define-syntax-rule (unbound-as-quoted . id) 'id)

(provide #%module-begin #%app #%datum
	(rename-out [unbound-as-quoted #%top]))
