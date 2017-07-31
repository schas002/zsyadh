# Documentation

## Builtins provided from Racket

The following thirty one builtin is provisioned from Racket:

```
and      andmap   append   car      caar     cadr     cdr
cdar     cddr     cond     cons     define   equal?   filter
foldl    if       lambda   length   let      let*     list
list?    list-ref map      member   null?    or       ormap
quote    reverse  symbol?
```

## Syntax differences from Racket

- Unbound identifiers are converted to quoted symbols, without warning.
