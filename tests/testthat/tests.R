context("mdsr")

test_that("scidb works", {
  x <- dbConnect_scidb("airlines")
  expect_s4_class(x, "DBIObject")
  expect_output(print(x), "MySQLConnection")
  
  suppressWarnings(y <- tbl(x, "airports"))
  expect_s3_class(y, c("tbl_dbi", "tbl_sql", "tbl"))
  expect_match(DBI::dbGetInfo(x)$host, "^mdsr.+rds\\.amazonaws\\.com$")
  expect_equal(DBI::dbGetInfo(x)$user, "mdsr_public")
  expect_equal(
    y %>% 
      head(1) %>%
      collect() %>%
      nrow() %>%
      suppressWarnings(), 
    1
  )
  expect_length(DBI::dbListTables(x), 4)
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
  skip_on_cran()
  if (require(leaflet)) {
    x <- leaflet() %>%
      addTiles() %>%
      addMarkers(lng = 174.768, lat = -36.852, popup = "The birthplace of R")
    png <- save_webshot(x, tempfile())
    expect_is(png, "fs_path")
#    expect_true(file.exists(png))
  }
})
