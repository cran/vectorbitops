# Generate some random numbers for unit tests.
test_nums <- runif(500, -2**30, 2**30)

test_that("AND works", {
  for (i in 0:4){
    test_set <- test_nums[(1+100*i):(100+100*i)]
    # Apply R's builtin operation.
    test_val <- test_set[1]
    for (i in 2:100) {
      test_val <- bitwOr(test_val, test_set[i])
    }
    expect_equal(bit_vector_OR(test_set), test_val)
  }
})

test_that("OR works", {
  for (i in 0:4){
    test_set <- test_nums[(1+100*i):(100+100*i)]
    # Apply R's builtin operation.
    test_val <- test_set[1]
    for (i in 2:100) {
      test_val <- bitwAnd(test_val, test_set[i])
    }
    expect_equal(bit_vector_AND(test_set), test_val)
  }
})

test_that("XOR works", {
  for (i in 0:4){
    test_set <- test_nums[(1+100*i):(100+100*i)]
    # Apply R's builtin operation.
    test_val <- test_set[1]
    for (i in 2:100) {
      test_val <- bitwXor(test_val, test_set[i])
    }
    expect_equal(bit_vector_XOR(test_set), test_val)
  }
})

test_that("Empty vectors return 0", {
  expect_equal(bit_vector_OR(c()), 0)
  expect_equal(bit_vector_AND(c()), 0)
  expect_equal(bit_vector_XOR(c()), 0)
})
