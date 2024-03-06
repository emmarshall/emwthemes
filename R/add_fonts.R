#' Load package fonts
#'
#' Registers fonts contained in {emwthemes} with \code{systemfonts::register_font()}. This function is called when the package is loaded.
#'
#' All styles of a font family are registered as the Regular member of their own families in the form of "{family}-{style(s)}".
#'
#' Call \code{systemfonts::registry_fonts()} after loading the fonts for more details
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
    "Font-Awesome-6-Brands-Regular-400" = "FontAwesome6-Brands",
    "Font-Awesome-6-Free-Regular-400" = "FontAwesome6-Regular",
    "Font-Awesome-6-Free-Solid-900" = "FontAwesome6-Solid"
  )

  .load_pkg_font <- function(family) {
    font_dir <- system.file("fonts", family, package = "penngradlings")
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



#' Get information about a font
#'
#' @param family Font family.
#' @param style Font style. Defaults to \code{"Regular"}.
#'
#' @return A dataframe containing information about a font.
#'   The \code{"source"} attribute indicates where it was found.
#'   If the font doesn't exist, invisibly returns \code{NULL}.
#' @export
font_info <- function(family, style = "Regular") {
  sys_font <- systemfonts::system_fonts() |>
    dplyr::filter(
      .data$family == .env$family,
      .data$style == .env$style
    )
  reg_font <- systemfonts::registry_fonts() |>
    dplyr::filter(
      .data$family == .env$family,
      .data$style == .env$style
    )
  if (nrow(sys_font) == 0) {
    if (nrow(reg_font) == 0) {
      cli::cli_text("Font {.val {family}} does not exist!")
      invisible(NULL)
    } else {
      attr(reg_font, "source") <- "registry"
      reg_font
    }
  } else {
    attr(sys_font, "source") <- "system"
    sys_font
  }
}

#' Check whether a font is registered
#'
#' Wrapper around \code{emwthemes::font_info} that tests whether the output is \code{NULL}.
#'
#' @param family Font family.
#' @param style Font style. Defaults to \code{"Regular"}.
#'
#' @return Boolean
#' @export
#'
#' @examples
#' \dontrun{
#' font_exists(family = "Oswald")
#' }
font_exists <- function(family, style = "Regular") {
  !is.null(suppressMessages(font_info(family, style)))
}

#' Find path to a system font
#'
#' Wrapper around \code{emwthemes::font_info} that pulls the path of the font if it exists.
#'
#' @param family Font family.
#' @param style Font style. Defaults to \code{"Regular"}.
#'   If the font doesn't exist, invisibly returns \code{NULL}.
#'
#' @return String of the path to the font file.
#' @export
font_path <- function(family, style = "Regular") {
  font_info <- suppressMessages(font_info(family, style))
  if (!is.null(font_info)) {
    font_info$path
  } else {
    cli::cli_text("Font {.val {family}} does not exist!")
    invisible(NA)
  }
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
