#lang s-exp racket/base

(define-syntax-rule (unbound-as-quoted . id) 'id)

(provide #%module-begin #%app #%datum
	(rename-out [unbound-as-quoted #%top])
	define if and or cond lambda let let* list length list-ref append reverse
	member map andmap ormap filter foldl cons car cdr quote equal? list? null?
	caar cadr cdar cddr symbol?)
