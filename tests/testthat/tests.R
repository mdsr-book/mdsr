context("mdsr")

test_that("scidb works", {
  x <- src_scidb("airlines")
  expect_s3_class(x, "src_sql")
  expect_output(print(x), "mdsr_public")
  expect_output(print(x), "rds.amazonaws.com")
  suppressWarnings(
    expect_equal(
      x %>% 
        tbl("airports") %>% 
        head(1) %>%
        collect() %>%
        nrow(), 
      1
    )
  )
})
