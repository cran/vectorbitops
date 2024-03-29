% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/vector_ops.R
\name{Vector Bitops}
\alias{Vector Bitops}
\alias{bit_vector_AND}
\alias{bit_vector_OR}
\alias{bit_vector_XOR}
\title{Bitwise Operations along a Vector}
\usage{
bit_vector_AND(vec)

bit_vector_OR(vec)

bit_vector_XOR(vec)
}
\arguments{
\item{vec}{A vector of integers. Numeric vectors will be coerced to int.}
}
\value{
A single integer, the result of applying the operation in question along the vector. Input that cannot be coerced to int returns NA. An empty vector returns 0.

\code{bit_vector_AND}: A single integer, the result of ANDing each entry in the input vector together.

\code{bit_vector_OR}: A single integer, the result of ORing each entry in the input vector together.

\code{bit_vector_XOR}: A single integer, the result of XORing each entry in the input vector together.
}
\description{
Functions to apply the same bitwise operation sequentially down a vector of integers. A fast way to AND or OR everything together when a single value is required.
}
\examples{
bit_vector_AND(c(1,3,5,7,9))
bit_vector_OR(c(1,2,4,8,16))
bit_vector_XOR(c(1,2,3,4,5))
}
