#define R_NO_REMAP
#include <R.h>
#include <Rinternals.h>
#include <stdlib.h> // For NULL, size_t.
#include "bitops.h"

  /* A macro over AND, OR and XOR, as one might expect. */
#define BITOP_BODY(__OP__)                                \
  PROTECT(vec = Rf_coerceVector(vec, INTSXP));            \
  SEXP out = PROTECT(Rf_allocVector(INTSXP, 1));          \
  size_t len = LENGTH(vec);                               \
  if (!len) {                                             \
    INTEGER(out)[0] = 0;                                  \
    UNPROTECT(2);                                         \
    return(out);                                          \
  }                                                       \
                                                          \
  int product = INTEGER(vec)[0];                          \
  for (int i = 1; i < len; ++i) {                         \
    if (INTEGER(vec)[i] == NA_INTEGER) continue;          \
    product = product __OP__ INTEGER(vec)[i];             \
  }                                                       \
  INTEGER(out)[0] = product;                              \
                                                          \
  UNPROTECT(2);                                           \
  return out

SEXP vectorbitops_AND(SEXP vec)
{
    BITOP_BODY(&);
}

SEXP vectorbitops_OR(SEXP vec)
{
    BITOP_BODY(|);
}

SEXP vectorbitops_XOR(SEXP vec)
{
    BITOP_BODY(^);
}
