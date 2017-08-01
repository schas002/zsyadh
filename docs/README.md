# Documentation

## Builtins provided from Racket

The following thirty seven builtins are provisioned from Racket:

```
and         andmap      append      bitwise-not car
caar        cadr        cdr         cdar        cddr
cond        cons        define      equal?      filter
foldl       if          lambda      length      let
let*        list        list?       list-ref    map
member      modulo      not         null?       or
ormap       quote       reverse     symbol?     void
*           /
```

### Aliases

There are nine aliases to some of these builtins:

| Original      | Aliases                                      |
|:--------------|---------------------------------------------:|
| `bitwise-not` | `~`                                          |
| `not`         | `!`                                          |
| `modulo`      | `mod` `%`                                    |
| `*`           | `times` `multiply` `mul`                     |
| `/`           | `divide` `div`                               |

## New builtins in Zsyadh

The following three builtins are new in Zsyadh:

```
decrement increment typeof
```

### Aliases

There are five aliases to these builtins:

| Original    | Aliases                                        |
|:------------|-----------------------------------------------:|
| `decrement` | `dec` `--`                                     |
| `increment` | `inc` `++`                                     |
| `typeof`    | `type`                                         |

### (<a id="(typeof.20x)">**typeof**</a> *x*) -> `symbol?`

Returns a symbol signifying the type of *x*, determined by running `[type]?` methods for `[type]`s

```
boolean number string bytes char symbol keyword list vector box hash void
```

in that order. The symbol `'[type]` will be returned for the first type to match, or `'misc` will be returned otherwise.

## Syntax differences from Racket

- Unbound identifiers are converted to quoted symbols, without warning.
