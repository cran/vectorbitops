#include <R.h>
#include <Rinternals.h>

/* Vectorised Bit Ops. Each takes a vector in an SEXP and returns an int. */
SEXP vectorbitops_AND(SEXP);
SEXP vectorbitops_OR(SEXP);
SEXP vectorbitops_XOR(SEXP);
