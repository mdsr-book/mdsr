context("mdsr")

test_that("scidb works", {
  x <- src_scidb("airlines")
  expect_s3_class(x, "src_sql")
})
