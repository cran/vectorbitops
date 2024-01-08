#define R_NO_REMAP
#include <R.h>
#include <Rinternals.h>
#include <stdlib.h> // For NULL.
#include <R_ext/Rdynload.h>
#include "bitops.h" // For the API to the existing code.

static const R_CallMethodDef CallEntries[] = {
    {"vectorbitops_AND", (DL_FUNC) &vectorbitops_AND, 1},
    {"vectorbitops_OR", (DL_FUNC) &vectorbitops_OR, 1},
    {"vectorbitops_XOR", (DL_FUNC) &vectorbitops_XOR, 1},
    {NULL,                  NULL,                    0} // Terminate.
};

void R_init_vectorbitops(DllInfo *info)
{
    R_registerRoutines(info, NULL, CallEntries, NULL, NULL);
    // Note: this might require R >= 3.3.0.
    R_useDynamicSymbols(info, FALSE);
}
