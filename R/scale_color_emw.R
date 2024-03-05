#' Plotting with personal palettes for color ggplot2 - inspired by emwCols()
#' @param name Name of Palette. Run \code{names(emwColsPalettes)} to view options.
#' @param direction Sets order of colors. Default palette is 1. If direction is -1,
#' palette color order is reversed
#' @param legend_title Character string specifying legend title. Default `NULL`.
#' @param ... Other arguments passed on to \code{\link[ggplot2]{scale_color_gradientn}}
#' @return A ggplot object defining a continuous color scale for use with ggplot2.
#' @examples
#' library(ggplot2)
#' ggplot(data=mtcars, aes(x=mpg, y=disp, color=wt)) +
#'   geom_point() +
#'   scale_color_emw_c("Reds")
#' @export

scale_color_emw_c <- function(name,
                                 direction = 1,
                                 legend_title = NULL, ...) {

  `%notin%` <- Negate(`%in%`)

  palette <- emwColsPalettes[[name]]

  if (is.null(palette) || is.numeric(name)) {
    stop("Palette does not exist.")
  }

  if (direction %notin% c(1, -1)) {
    stop("Direction not valid. Please use 1 for standard palette or -1 for reversed palette.")
  }

  if (!is.null(legend_title)) {
    ggplot2::scale_color_gradientn(name = legend_title,
                                   colors = emwcols(name = name, direction = direction), ...)
  } else {
    ggplot2::scale_color_gradientn(colors = emwcols(name = name, direction = direction), ...)
  }
}


#' Plotting with personal palettes for color ggplot2 - inspired by emwCols()
#' @param name Name of Palette. Run \code{names(emwColsPalettes)} to view options.
#' @param direction Sets order of colors. Default palette is 1. If direction is -1,
#' palette color order is reversed
#' @param legend_title Character string specifying legend title. Default `NULL`.
#' @param ... Other arguments passed on to \code{\link[ggplot2]{scale_color_gradientn}}
#' @return A ggplot object defining a continuous color scale for use with ggplot2.
#' @examples
#' library(ggplot2)
#' ggplot(data=mtcars, aes(x=mpg, y=disp, color=wt)) +
#'   geom_point() +
#'   scale_color_emw_c("Reds")
#' @export

scale_color_emw_d <- function(name,
                              direction = 1,
                              legend_title = NULL, ...) {
  emwcols_disc <- function(name, direction = 1) {

    `%notin%` <- Negate(`%in%`)

    palette <- emwColsPalettes[[name]]

    if (is.null(palette) || is.numeric(name)) {
      stop("Palette does not exist.")
    }

    if (direction %notin% c(1, -1)) {
      stop("Direction not valid. Please use 1 for standard palette or -1 for reversed palette.")
    }

    function(n) if (direction == 1) {
      palette[[1]][1:n]
    } else {
      rev(palette[[1]])[1:n]
    }

  }

  if (!is.null(legend_title)) {
    ggplot2::discrete_scale(name = legend_title,
                            aesthetics = "color",
                            scale_name = "emw_d",
                            palette = emwcols_disc(name = name, direction = direction), ...)
  } else {
    ggplot2::discrete_scale(aesthetics = "color",
                            scale_name = "emw_d",
                            palette = emwcols_disc(name = name, direction = direction), ...)
  }
}


#' Plotting with personal palettes for color ggplot2
#' @param name Name of Palette. Run \code{view_all_palettes(type = "div")} to view
#' options. Must be a diverging palette name.
#' @param direction Sets order of colors. Default palette is 1. If direction is -1,
#' palette color order is reversed
#' @param legend_title Character string specifying legend title. Default `NULL`.
#' @param ... Other arguments passed on to \code{\link[ggplot2]{scale_colour_gradient2}}
#' @return A ggproto object defining a continuous colour scale for use with ggplot2.
#' @examples
#' library(ggplot2)
#' ggplot(data=mtcars, aes(x=mpg, y=disp, colour=wt)) +
#'   geom_point() +
#'   scale_color_emw_div("PinkGreens", midpoint = mean(mtcars$wt))
#' @export

scale_color_emw_div <- function(name,
                                   direction = 1,
                                   legend_title = NULL, ...) {

  `%notin%` <- Negate(`%in%`)

  palette <- emwColsPalettes[[name]]

  if (is.null(palette) || is.numeric(name)) {
    stop("Palette does not exist.")
  }

  if (palette[[3]] != "div") {
    stop("Palette must be a diverging palette.")
  }

  if (direction %notin% c(1, -1)) {
    stop("Direction not valid. Please use 1 for standard palette or -1 for reversed palette.")
  }

  if (direction == 1) {
    low_col <- palette[[1]][1]
    high_col <- utils::tail(palette[[1]], 1)
  } else {
    low_col <- utils::tail(palette[[1]], 1)
    high_col <- palette[[1]][1]
  }
  mid_col <- palette[[1]][ceiling(length(palette[[1]]) / 2)]


  if (!is.null(legend_title)) {
    ggplot2::scale_color_gradient2(name = legend_title,
                                   low = low_col,
                                   mid = mid_col,
                                   high = high_col, ...)
  } else {
    ggplot2::scale_color_gradient2(low = low_col,
                                   mid = mid_col,
                                   high = high_col, ...)
  }
}
