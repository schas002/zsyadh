#lang s-exp racket/base

(define-syntax-rule (unbound-as-quoted . id) 'id)

(define (increment x) (+ x 1))
(define (decrement x) (- x 1))

(define (typeof x) (cond
	[(boolean? x) 'boolean]
	[(number? x) 'number]
	[(string? x) 'string]
	[(bytes? x) 'bytes]
	[(char? x) 'char]
	[(symbol? x) 'symbol]
	[(keyword? x) 'keyword]
	[(list? x) 'list]
	[(vector? x) 'vector]
	[(box? x) 'box]
	[(hash? x) 'hash]
	[(void? x) 'void]
	[else 'misc]))

(provide #%module-begin #%app #%datum
	(rename-out [unbound-as-quoted #%top])
	; Builtins provided from Racket
	define if and or cond lambda let let* list length list-ref append reverse
	member map andmap ormap filter foldl cons car cdr quote equal? list? null?
	caar cadr cdar cddr symbol? not bitwise-not void * / modulo
	; Aliases to builtins provided from Racket
	(rename-out
		[not !]
		[bitwise-not ~]
		[* times]
		[* multiply]
		[* mul]
		[/ divide]
		[/ div]
		[modulo mod]
		[modulo %])
	; Builtins of our own creation
	increment decrement typeof
	; Aliases to builtins of our own creation
	(rename-out
		[increment inc]
		[increment ++]
		[decrement dec]
		[decrement --]
		[typeof type]))
