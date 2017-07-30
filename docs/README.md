# Documentation

## Builtins provided from Racket

The following thirty six builtins are provisioned from Racket:

```
and      andmap   append   car      caar     cadr     cdr
cdar     cddr     cond     cons     cons?    define   empty
empty?   equal?   filter   first    foldl    if       lambda
length   let      let*     list     list?    list-ref map
member   null?    or       ormap    quote    rest     reverse
symbol?
```

## Syntax differences from Racket

- Unbound identifiers are converted to quoted symbols, without warning.
