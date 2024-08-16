#' Embedded webshot of leaflet map
#' @param map A leaflet map object
#' @param path_to_img A path to the image file to save
#' @param overwrite Do you want to clobber any existing file?
#' @inheritParams webshot2::webshot
#' @param ... arguments passed to [webshot2::webshot()]
#' @export
#' @return a path to a PNG file
#' @examples 
#' \dontrun{
#' if (require(leaflet)) {
#'   map <- leaflet() |>
#'     addTiles() |>
#'     addMarkers(lng = 174.768, lat = -36.852, popup = "The birthplace of R")
#'   save_webshot(map, tempfile())
#' }
#' }

save_webshot <- function(map, path_to_img, overwrite = FALSE,
                         vwidth = 800, vheight = 600, cliprect = "viewport", 
                         ...) {
  out <- fs::as_fs_path(path_to_img)
  
  if (!fs::path_ext(out) == ".png") {
    out <- fs::path_ext_set(out, ".png")
  }
  
  if (fs::file_exists(out) & !overwrite) {
    stop("file exists already")  
  }
  tmp_file <- fs::file_temp(ext = ".html")
  map |>
    htmlwidgets::saveWidget(
      file = tmp_file, 
      selfcontained = FALSE
    )
    webshot2::webshot(
      tmp_file, 
      file = out, 
      vwidth = vwidth, vheight = vheight, cliprect = cliprect, ...
    )
  return(out)
}
