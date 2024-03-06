#' Load package fonts
#'
#' Registers fonts contained in {emwthemes} with \code{systemfonts::register_font()}. This function is called when the package is loaded.
#'
#' All styles of a font family are registered as the Regular member of their own families in the form of "{family}-{style(s)}".
#'
#' Call \code{systemfonts::registry_fonts()} after loading the fonts for list of fonts loaded.
#'Note also that displaying the font in `ggplot2` objects in rmd or quarto requires `showtext::showtext_auto()` in the code chunk. If saving with ``ggsave` run `showtext_opts(dpi = 300)`
#'
#' @param verbose Whether the newly registered fonts should be printed to the console. Defaults to \code{TRUE}.
#'
#' @section Fonts loaded:
#' \describe{
#'     \item{`Metropolis`}{ Find details later from \url{niceperson}. }
#'     \item{`Oswald`}{ Google font, from \url{https://fonts.google.com/specimen/Oswald}. }
#'     \item{`Architects Daughter`}{ Google font, from \url{https://fonts.google.com/specimen/Architects+Daughter}. }
#'     \item{`MonoLisaemw`}{ monospace font \url{findlater}. }
#'     \item{`Font Awesome 6 Free`}{ From \url{https://fontawesome.com/}.
#'       The free version contains a subset of the Regular, Solid, and Brand styles:
#'       \url{https://fontawesome.com/v6.15/icons?d=gallery&p=2&s=brands,regular,solid&m=free}.
#'     }
#' }
#'


load_pkg_fonts <- function(verbose = TRUE) {
  custom_names <- c(
    "MonoLisaemw" = "MonoLisaemw",
    "Font-Awesome-6-Brands-Regular-400" = "fa-brands",
    "Font-Awesome-6-Free-Regular-400" = "FontAwesome6-Regular",
    "Font-Awesome-6-Free-Solid-900" = "FontAwesome6-Solid"
  )

  .load_pkg_font <- function(family) {
    font_dir <- system.file("fonts", family, package = "emwthemes")
    font_paths <- dir(font_dir, full.names = TRUE)
    font_names <- stringr::str_remove(dir(font_dir), "\\..*$")

    if (all(font_names %in% names(custom_names))) {
      font_names <- unname(custom_names[font_names])
    }

    purrr::walk2(
      font_names, font_paths,
      function(name, path) {

        systemfonts::register_font(name = name, plain = path)
      }
    )
    if (verbose) {
      cli::cli({
        cli::cli_h2("{.strong {family}}")
        cli::cli_alert_success("{.val {length(font_names)}} style{?s} registered:")
        cli::cli_ul(font_names)
      })
    }
  }
  pkg_fonts <- dir(system.file("fonts", package = "emwthemes"))
  purrr::walk(pkg_fonts, .load_pkg_font)
  if (verbose) {
    cli::cli_rule()
    cli::cli_alert_info("Done! Check {.code systemfonts::registry_fonts()} for more details.")
  }
  invisible(systemfonts::registry_fonts())
}



#' Fonts included in the emwthemes package
#'
#' @return A named list of font families and font styles
#' @export
#'
#' @examples
#' \dontrun{
#' .pkg_fonts()
#' }
.pkg_fonts <- function() {
  families <- dir(system.file("fonts", package = "emwthemes"))
  fonts <- purrr::map(families, ~ dir(system.file("fonts", .x, package = "emwthemes")))
  fonts <- purrr::map(fonts, ~ stringr::str_remove(.x, "\\..*$"))
  stats::setNames(fonts, families)
}



#' Register members of a font family as their own families
#'
#' @param family The name of the font family, as registered in \code{systemfonts::system_fonts()}
#' @param verbose Whether to print a message of the newly registered font families
#'
#' @export
#'
#' @examples
#' \dontrun{
#' font_hoist(family = "Oswald")
#' }
#'
#' @importFrom rlang .data .env
font_hoist <- function(family, verbose = TRUE) {
  font_specs <- systemfonts::system_fonts()  |>
    dplyr::filter(.data$family == .env$family) |>
    dplyr::mutate(family = paste(.data$family, .data$style)) |>
    dplyr::select(plain = .data$path, name = .data$family)

  purrr::pwalk(as.list(font_specs), systemfonts::register_font)

  if (verbose) {
    cli::cli({
      cli::cli_alert_success("Hoisted {.val {nrow(font_specs)}} variants for {.val {family}}")
      cli::cli_ul(font_specs$name)
    })
  }
}
