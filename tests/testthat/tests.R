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
  expect_length(dplyr::db_list_tables(x$con), 4)
})

test_that("download functions work", {
  skip_on_cran()
  BabynameDist <- make_babynames_dist()
  expect_is(BabynameDist, "tbl_df")
  
  NCI60 <- etl_NCI60()
  expect_is(NCI60, "tbl_df")
  expect_equal(nrow(NCI60), 41078)
})


test_that("save_webshot works", {
  if (require(leaflet)) {
    map <- leaflet() %>%
      addTiles() %>%
      addMarkers(lng = 174.768, lat = -36.852, popup = "The birthplace of R")
    png <- save_webshot(map, tempfile())
    expect_is(png, "fs_path")
    expect_true(file.exists(png))
  }
})
