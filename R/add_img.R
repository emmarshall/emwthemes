#' Create an HTML image tag with a specified width taken from Thomas Mock blog post for use with `ggimage()`
#'
#' @param x The image source URL.
#' @param width The width of the image in pixels.
#' @return An HTML image tag.
#' @export
#' @importFrom glue glue
link_to_img <- function(x, width) {
  glue::glue("<img src='{x}' width='{width}'/>")
}
