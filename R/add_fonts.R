
#' @title Import "Architects Daughter" font
#' @details import_*() functions taken from hrbrthemes and Jon Bernhardt..
#' Created by
#' You may still need to install each font on your system directly by finding the .ttf file and clicking "Install".
#' @seealso
#'  \code{\link[extrafont]{font_import}}
#' @rdname import_font
#' @export
#' @importFrom extrafont font_import

import_daughter_font <- function() {

  daughter_font_dir <- system.file("fonts", "Architects_Daughter", package = "emwthemes")

  suppressWarnings(suppressMessages(extrafont::font_import(paths = daughter_font_dir, prompt = FALSE)))

  message(
    sprintf(
      "You should install these fonts on your system directly. The files are located in [%s]",
      daughter_font_dir
    )
  )
}


#' @title Import "Shadows Into Light Two" font
#' @details import_*() functions taken from hrbrthemes.
#' You may still need to install each font on your system directly by finding the .ttf file and clicking "Install".
#' @seealso
#'  \code{\link[extrafont]{font_import}}
#' @rdname import_font
#' @export
#' @importFrom extrafont font_import

import_shadows_font <- function() {

  shadows_font_dir <- system.file("fonts", "Shadows_Into_Light_Two", package = "emwthemes")

  suppressWarnings(suppressMessages(extrafont::font_import(paths = shadows_font_dir, prompt = FALSE)))

  message(
    sprintf(
      "You should install these fonts on your system directly. The files are located in [%s]",
      shadows_font_dir
    )
  )
}



#' @title Import "Monolisaemw" font
#' @details import_*() functions taken from hrbrthemes and tvthemes
#' You may still need to install each font on your system directly by finding the .ttf file and clicking "Install".
#' @seealso
#'  \code{\link[extrafont]{font_import}}
#' @rdname import_font
#' @export
#' @importFrom extrafont font_import

import_monolisa_font <- function() {

  monolisa_font_dir <- system.file("fonts", "MonoLisa_emw", package = "emwthemes")

  suppressWarnings(suppressMessages(extrafont::font_import(paths = monolisa_font_dir, prompt = FALSE)))

  message(
    sprintf(
      "You should install these fonts on your system directly. The files are located in [%s]",
      monolisa_font_dir
    )
  )
}


#' @title Import "DM Serif" font
#' @details import_*() functions taken from hrbrthemes.
#' You may still need to install each font on your system directly by finding the .ttf file and clicking "Install".
#' @seealso
#'  \code{\link[extrafont]{font_import}}
#' @rdname import_font
#' @export
#' @importFrom extrafont font_import

import_dmserif_font <- function() {

  dmserif_font_dir <- system.file("fonts", "DM_Serif_Display", package = "emwthemes")

  suppressWarnings(suppressMessages(extrafont::font_import(paths = dmserif_font_dir, prompt = FALSE)))

  message(
    sprintf(
      "You should install these fonts on your system directly. The files are located in [%s]",
      dmserif_font_dir
    )
  )
}



#' @title Import "DM Sans" font
#' @details import_*() functions taken from hrbrthemes.
#' You may still need to install each font on your system directly by finding the .ttf file and clicking "Install".
#' @seealso
#'  \code{\link[extrafont]{font_import}}
#' @rdname import_font
#' @export
#' @importFrom extrafont font_import

import_dmsans_font <- function() {

  dmsans_font_dir <- system.file("fonts", "DM_Sans", package = "emwthemes")

  suppressWarnings(suppressMessages(extrafont::font_import(paths = dmsans_font_dir, prompt = FALSE)))

  message(
    sprintf(
      "You should install these fonts on your system directly. The files are located in [%s]",
      dmsans_font_dir
    )
  )
}


#' @title Import "Metropolis" font
#' @details import_*() functions taken from hrbrthemes.
#' You may still need to install each font on your system directly by finding the .ttf file and clicking "Install".
#' @seealso
#'  \code{\link[extrafont]{font_import}}
#' @rdname import_font
#' @export
#' @importFrom extrafont font_import

import_metropolis_font <- function() {

  metropolis_font_dir <- system.file("fonts", "Metropolis", package = "emwthemes")

  suppressWarnings(suppressMessages(extrafont::font_import(paths = metropolis_font_dir, prompt = FALSE)))

  message(
    sprintf(
      "You should install these fonts on your system directly. The files are located in [%s]",
      metropolis_font_dir
    )
  )
}


