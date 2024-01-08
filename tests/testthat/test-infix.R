# Very basic tests. There's not much to do here.

test_that("Infix ops work.", {
  for (i in 1:5) {
    lhs <- runif(100+as.integer(runif(1, -10, 10)), 2**-30, 2**30)
    rhs <- runif(100, 2**-30, 2**30)
    expect_equal(lhs %|% rhs, bitwOr(lhs, rhs))
    expect_equal(lhs %&% rhs, bitwAnd(lhs, rhs))
    expect_equal(lhs %^% rhs, bitwXor(lhs, rhs))
    expect_equal(lhs %<<% 1:31, bitwShiftL(lhs, 1:31))
    expect_equal(lhs %>>% 1:31, bitwShiftR(lhs, 1:31))
  }
})
