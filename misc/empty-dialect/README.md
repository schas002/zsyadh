# empty-dialect

This dialect is empty, excluding the syntax parsing implicit forms:

- `#%module-begin`, `#%app`, `#%datum` are provided by Racket, and
- `#%top` converts all unbound identifiers to quoted symbols.

```racket
#lang s-exp racket/base
```

The `s-exp` language is basically a meta-language that wraps the entire file into a module written in a module language.<sup>[reference 1.3.19.1]</sup>

```racket
(define-syntax-rule (unbound-as-quoted . id) 'id)
```

`define-syntax-rule` creates a syntax rule that can then be assigned to a syntax parsing implicit form. Syntax errors, where possible, are ~~handled~~ thrown in terms of the argument passed.<sup>[reference 12.1]</sup>

In this case, `unbound-as-quoted` is passed an id and returns the quoted symbol.

That's pretty much it...

```racket
(provide #%module-begin #%app #%datum
```

provisions these forms from Racket, and

```racket
	(rename-out [unbound-as-quoted #%top]))
```

provisions our `unbound-as-quoted` syntax rule as `#%top` to convert the unbound identifiers.

Congrats, you now have a pretty much useless dialect. From there, you can provision more functions from `racket/base` and your own functions.

* * *

<small>

[reference 1.3.19.1]: https://docs.racket-lang.org/reference/reader.html?q=s-exp#%28mod-path._s-exp%29
[reference 12.1]: https://docs.racket-lang.org/reference/stx-patterns.html#%28form._%28%28lib._racket%2Fprivate%2Fmisc..rkt%29._define-syntax-rule%29%29

</small>
