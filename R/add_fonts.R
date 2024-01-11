#' @title Import specific fonts
#' @description Import and register specific Google fonts using sysfonts package.
#' @return None
#' @export
add_fonts <- function() {
  font_add_google("Architects Daughter", "daughter")
  font_add_google("Shadows Into Light Two", "shadows")
  font_add_google("Archivo Black", "archivo")
  font_add_google("Kalam", "kalam")
  font_add_google("Oswald", "oswald")
  systfonts::showtext_auto()
}

# Example usage:
# import_specific_google_fonts()

#' Function to check font availability
#'
#' @param font_name Name of the font to check
#'
#' @return A warning message if the font is not found.
#'
#' @export
check_font <- function(font_name) {
  if (!requireNamespace("sysfonts", quietly = TRUE)) {
    warning("The 'sysfonts' package is required to check font availability.")
  } else {
    if (!font_name %in% sysfonts::font_names()) {
      warning("Font '", font_name, "' is not available.")
    }
  }
}
