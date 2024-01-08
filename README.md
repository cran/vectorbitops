
# vectorbitops

<!-- badges: start -->
[![pipeline status](https://gitlab.com/S_S_/vectorbitops/badges/master/pipeline.svg)](https://gitlab.com/S_S_/vectorbitops/-/commits/master)
[![coverage report](https://gitlab.com/S_S_/vectorbitops/badges/master/coverage.svg)](https://gitlab.com/S_S_/vectorbitops/-/commits/master)
[![Latest Release](https://gitlab.com/S_S_/vectorbitops/-/badges/release.svg)](https://gitlab.com/S_S_/vectorbitops/-/releases)
<!-- badges: end -->

A set of minimal extensions to R's built-in bitwise operations, mainly for use with bitmasks.  
This provides C functions to AND, OR or XOR a vector of integers together, to compress down to a single int. It also provides 
infix operators for bitwise operations, using the base functions.  

If using `bitops`, the infix operators are redundant.  

## Installation

You can install the development version of vectorbitops like so:

``` r
devtools::install_gitlab("S_S_/vectorbitops")
```

## Example

This is a basic example of use for some simple bitmasking.

``` r
library(vectorbitops)

vals <- c(
    "foo" = 1 %<<% 0,
    "bar" = 1 %<<% 1,
    "baz" = 1 %<<% 2
)

mask_a <- vals["foo"]
mask_b <- vals["baz"]
mask_c <- bit_vector_OR(vals[c("bar", "baz")])
flags <- bit_vector_OR(vals[c("foo", "bar")])

# In practise, one would just use `bitwAnd` for the below, but for demostration purposes:
bit_vector_AND(c(flags, mask_a)) # 1
bit_vector_AND(c(flags, mask_b)) # 0
bit_vector_AND(c(flags, mask_c)) # 2
```

