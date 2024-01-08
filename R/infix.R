# Basic infix operators. For a real implementation with interesting details, see the `bitops` package.

#' @name Infix Bitwise Operators
#' @rdname infix
#' @aliases `%|%`
#' @aliases `%&%`
#' @aliases `%^%`
#' @aliases `%<<%`
#' @aliases `%>>%`
#'
#' @title Infix operators for bitwise operations.
#'
#' @description Basic infix wrapper around the base::bitw_OP_ operations.
#'
#' @param a,b Integer vectors. Numerics are coerced to integers.
#' @param n Non-negative integer vector of values up to 31.
#'
#' @return An integer vector of length of the longer of the arguments, or zero if one of the arguments is zero-length. NA input makes NA output.
NULL

#' @rdname infix
#' @examples
#' 1 %|% 2
#' @return `%|%`: A vector of pairwise ORed values.
#' @export
`%|%` <- function(a, b)
{
    bitwOr(a,b)
}

#' @rdname infix
#' @examples
#' 1 %&% 2
#' @return `%&%`: A vector of pairwise ANDed values.
#' @export
`%&%` <- function(a,b)
{
    bitwAnd(a,b)
}

#' @rdname infix
#' @examples
#' 1 %^% 2
#' @return `%^%`: A vector of pairwise XORed values.
#' @export
`%^%` <- function(a,b)
{
    bitwXor(a,b)
}

#' @rdname infix
#' @examples
#' 1 %<<% 2
#' @return `%<<%`: A vector of the values on the LHS pairwise left-shifted by the RHS value.
#' @export
`%<<%` <- function(a,n)
{
    bitwShiftL(a,n)
}

#' @rdname infix
#' @examples
#' 8 %>>% 2
#' @return `%>>%`: A vector of the values on the LHS pairwise right-shifted by the RHS value.
#' @export
`%>>%` <- function(a,n)
{
    bitwShiftR(a,n)
}
