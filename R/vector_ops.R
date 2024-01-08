# These functions take a vector argument and reduce it to scalar by the chosen bitop.
# Essentially providing set operations on the bits - intersection/union, useful for bitmasks.

#' @name Vector Bitops
#' @rdname funs
#' @aliases bit_vector_AND
#' @aliases bit_vector_OR
#' @aliases bit_vector_XOR
#'
#' @title Bitwise Operations along a Vector
#'
#' @description Functions to apply the same bitwise operation sequentially down a vector of integers. A fast way to AND or OR everything together when a single value is required.
#' 
#' @param vec A vector of integers. Numeric vectors will be coerced to int.
#' 
#' @return A single integer, the result of applying the operation in question along the vector. Input that cannot be coerced to int returns NA. An empty vector returns 0.
NULL

#' @rdname funs
#' @examples
#' bit_vector_AND(c(1,3,5,7,9))
#' @return `bit_vector_AND`: A single integer, the result of ANDing each entry in the input vector together.
#' @export
bit_vector_AND <- function(vec)
{
    .Call(vectorbitops_AND, vec)
}

#' @rdname funs
#' @examples
#' bit_vector_OR(c(1,2,4,8,16))
#' @return `bit_vector_OR`: A single integer, the result of ORing each entry in the input vector together.
#' @export
bit_vector_OR <- function(vec)
{
    .Call(vectorbitops_OR, vec)
}

#' @rdname funs
#' @examples
#' bit_vector_XOR(c(1,2,3,4,5))
#' @return `bit_vector_XOR`: A single integer, the result of XORing each entry in the input vector together.
#' @export
bit_vector_XOR <- function(vec)
{
    .Call(vectorbitops_XOR, vec)
}
