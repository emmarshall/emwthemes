
#' URL links to Google Fonts
#'
#' @return A data frame with font names and their respective URL links.
#'
#' @export
font_urls <- data.frame(
  name = c("Architects Daughter", "Shadows Into Light Two", "Varela Round"),
  url  = c(
    "https://fonts.google.com/specimen/Architects+Daughter/",
    "https://fonts.google.com/specimen/Shadows+Into+Light+Two/",
    "https://fonts.google.com/specimen/Varela+Round/"
  )
)

#' Check if a font is available
#'
#' @param font_name The name of the font to check.
#'
#' @export
check_font <- function(font_name) {
  if (!requireNamespace("extrafont", quietly = TRUE)) {
    warning("The font \"", font_name, "\" may or may not be installed on your system.",
            "Please install the package `extrafont` if you'd like me to be able to check for you.",
            call. = FALSE)
  } else {
    if (!font_name %in% extrafont::fonts()) {
      if (font_name %in% font_urls$name) {
        warning("Font '", font_name, "' isn't in the extrafont font list (but it may still work). ",
                "If recently installed, you can try running `extrafont::font_import()`. ",
                "To install, visit: ", font_urls[font_urls$name == font_name, "url"],
                call. = FALSE)
      } else {
        warning("Font '", font_name, "' isn't in the extrafont font list (but it may still work). ",
                "If recently installed, you can try running `extrafont::font_import()`. ",
                call. = FALSE)
      }
    }
  }
}
