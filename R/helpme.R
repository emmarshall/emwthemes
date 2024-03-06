# assigning global variables
utils::globalVariables("hindsight")

#' Commonly used images
#'
#' Returns the URL for the image based on `folder_path` and `name`
#'
#' @param folder_path Names of addition path required to locate items within runza folder after `https://emmarshall.github.io/runza/img/...`
#' @param img_name Name of column to locate individual item within folder
#'
#' @return Character vector of URLs
#' @export
#'
#' @examples
#' library(dplyr)
#'## Need to set folder path correctly each time
#' emwthemes::hindsight |>
#'   mutate(
#'   ## Set folder path
#'   image = get_emw_image("hind/", timing))
get_emw_image <- function(folder_path, img_name) {
  glue::glue("https://emmarshall.github.io/runza/img/{folder_path}{img_name}.png")
}
