#' Plotting with emwCols palettes for color ggplot2
#' @param name Name of Palette. Run \code{names(emwColsPalettes)} to view options.
#' @param direction Sets order of colors. Default palette is 1. If direction is -1,
#' palette color order is reversed
#' @param legend_title Character string specifying legend title. Default `NULL`.
#' @param ... Other arguments passed on to \code{\link[ggplot2]{scale_fill_gradientn}}
#' @return A ggproto object defining a continuous fill scale for use with ggplot2.
#' @examples
#' library(ggplot2)
#' ggplot(data=mtcars, aes(x=mpg, y=disp, fill=wt)) +
#'   geom_point(pch = 21) +
#'   scale_fill_emw_c("Corals")
#' @export

scale_fill_emw_c <- function(name,
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
    ggplot2::scale_fill_gradientn(name = legend_title,
                                  colors = emwcols(name = name, direction = direction), ...)
  } else {
    ggplot2::scale_fill_gradientn(colors = emwcols(name = name, direction = direction), ...)
  }


}

#' Plotting with emwCols palettes for color ggplot2
#' @param name Name of Palette. Run \code{names(emwColsPalettes)} to view options.
#' @param direction Sets order of colors. Default palette is 1. If direction is -1,
#' palette color order is reversed
#' @param legend_title Character string specifying legend title. Default `NULL`.
#' @param ... Other arguments passed on to \code{\link[ggplot2]{discrete_scale}}
#' @return A ggproto object defining a discrete fill scale for use with ggplot2.
#' @examples
#' library(ggplot2)
#' ggplot(data=mtcars, aes(x=mpg, y=disp, fill=factor(cyl))) +
#'   geom_point(pch = 21) +
#'   scale_fill_emw_d("Bright")
#' @export

scale_fill_emw_d <- function(name,
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
                            aesthetics = "fill",
                            scale_name = "emw_d",
                            palette = emwcols_disc(name = name, direction = direction), ...)
  } else {
    ggplot2::discrete_scale(aesthetics = "fill",
                            scale_name = "emw_d",
                            palette = emwcols_disc(name = name, direction = direction), ...)
  }

}

#' Plotting with emwCols palettes for fill color ggplot2
#' @param name Name of Palette. Run \code{view_all_palettes(type = "div")} to view
#' options. Must be a diverging palette name.
#' @param direction Sets order of colors. Default palette is 1. If direction is -1,
#' palette color order is reversed
#' @param legend_title Character string specifying legend title. Default `NULL`.
#' @param ... Other arguments passed on to \code{\link[ggplot2]{scale_color_gradient2}}
#' @return A ggproto object defining a continuous color scale for use with ggplot2.
#' @examples
#' library(ggplot2)
#' ggplot(data=mtcars, aes(x=mpg, y=disp, fill=wt)) +
#'   geom_point(pch = 21) +
#'   scale_fill_emw_div("Coral2Blues", midpoint = mean(mtcars$wt))
#' @export

scale_fill_emw_div <- function(name,
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
    ggplot2::scale_fill_gradient2(name = legend_title,
                                  low = low_col,
                                  mid = mid_col,
                                  high = high_col, ...)
  } else {
    ggplot2::scale_fill_gradient2(low = low_col,
                                  mid = mid_col,
                                  high = high_col, ...)
  }
}


