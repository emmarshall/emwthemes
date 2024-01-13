
#' X & Y scales with opinionated pre-sets for percent & comma label formats
#'
#' The `_comma` ones set comma format for axis text and `expand=c(0,0)` (you need to set limits).
#'
#' The `_percent` ones set precent format for axis text and `expand=c(0,0)` (you need to set limits).
#'
#' @md
#' @param name The name of the scale. Used as axis title.
#' @param breaks One of:
#'   - `NULL` for no breaks
#'   - A numeric vector of positions
#'   - A function that takes the limits as input and returns breaks as output
#' @param minor_breaks One of:
#'   - `NULL` for no minor breaks
#'   - A numeric vector of positions
#'   - A function that given the limits returns a vector of minor breaks.
#' @param labels Specifying overrides the default format (i.e. you really don't want to do that). `NULL` means no labels.
#' @param limits A numeric vector of length two providing limits of the scale.
#'   Use `NA` to refer to the existing minimum or maximum.
#' @param oob Function that handles limits outside of the scale limits
#'   (out of bounds). The default replaces out of bounds values with NA.
#' @param na.value If `na.translate = TRUE`, what value aesthetic
#'   value should missing be displayed as?
#' @param expand same as in ggplot2
#' @param trans Either the name of a transformation object, or the
#'   object itself.
#' @param position The position of the axis. "left" or "right" for vertical
#' scales, "top" or "bottom" for horizontal scales
#' @export
scale_x_percent <- function(name = NULL,
                            breaks = NULL,
                            minor_breaks = NULL,
                            labels = NULL,
                            limits = NULL,
                            expand = c(0.01, 0),
                            oob = scales::censor,
                            na.value = NA_real_,
                            trans = "identity",
                            position = "bottom",
                            ...) {

  if (missing(labels)) {
    scales::percent_format(
      accuracy = 1,
      scale = 100,
      prefix = "",
      suffix = "%",
      big.mark = " ",
      decimal.mark = ".",
      trim = TRUE,
      ...
    ) -> labels
  }

  ggplot2::continuous_scale(
    aesthetics = c(
      "x", "xmin", "xmax", "xend", "xintercept", "xmin_final",
      "xmax_final", "xlower", "xmiddle", "xupper", "x0"
    ),
    scale_name = "position_c",
    palette = scales::identity_pal()(1),
    name = name,
    breaks = breaks,
    labels = labels,
    limits = limits,
    expand = expand,
    oob = oob,
    na.value = na.value,
    trans = trans,
    position = position
  )
}

#' @rdname scale_x_percent
#' @export
scale_y_percent <- function(name = NULL,
                            breaks = NULL,
                            minor_breaks = NULL,
                            labels = NULL,
                            limits = NULL,
                            expand = c(0.01, 0),
                            oob = scales::censor,
                            na.value = NA_real_,
                            trans = "identity",
                            position = "left",
                            ...) {

  if (missing(labels)) {
    scales::percent_format(
      accuracy = 1,
      scale = 100,
      prefix = "",
      suffix = "%",
      big.mark = " ",
      decimal.mark = ".",
      trim = TRUE,
      ...
    ) -> labels
  }

  ggplot2::continuous_scale(
    aesthetics = c(
      "y", "ymin", "ymax", "yend", "yintercept",
      "ymin_final", "ymax_final", "lower", "middle", "upper"
    ),
    scale_name = "position_c",
    palette = scales::identity_pal()(1),
    name = name,
    breaks = breaks,
    labels = labels,
    limits = limits,
    expand = expand,
    oob = oob,
    na.value = na.value,
    trans = trans,
    position = position
  )
}

#' @rdname scale_x_percent
#' @param ... passed on to [scales::comma_format()] or [scales::percent_format()]
#' @export
scale_x_comma <- function(name = NULL,
                          breaks = NULL,
                          minor_breaks = NULL,
                          labels = NULL,
                          limits = NULL,
                          expand = c(0.01, 0),
                          oob = scales::censor,
                          na.value = NA_real_,
                          trans = "identity",
                          position = "bottom",
                          ...) {

  if (missing(labels)) {
    scales::comma_format(
      accuracy = 1,
      scale = 1,
      prefix = "",
      suffix = "",
      big.mark = ",",
      decimal.mark = ".",
      trim = TRUE,
      ...
    ) -> labels
  }

  ggplot2::continuous_scale(
    aesthetics = c(
      "x", "xmin", "xmax", "xend", "xintercept",
      "xmin_final", "xmax_final",
      "xlower", "xmiddle", "xupper"
    ),
    scale_name = "position_c",
    palette = scales::identity_pal()(1),
    name = name,
    breaks = breaks,
    labels = labels,
    limits = limits,
    expand = expand,
    oob = oob,
    na.value = na.value,
    trans = trans,
    position = position
  )
}

#' @rdname scale_x_percent
#' @export
scale_y_comma <- function(name = NULL,
                          breaks = NULL,
                          minor_breaks = NULL,
                          labels = NULL,
                          limits = NULL,
                          expand = c(0.01, 0),
                          oob = scales::censor,
                          na.value = NA_real_,
                          trans = "identity",
                          position = "left",
                          ...) {

  if (missing(labels)) {
    scales::comma_format(
      accuracy = 1,
      scale = 1,
      prefix = "",
      suffix = "",
      big.mark = ",",
      decimal.mark = ".",
      trim = TRUE,
      ...
    ) -> labels
  }

  ggplot2::continuous_scale(
    aesthetics = c(
      "y", "ymin", "ymax", "yend", "yintercept",
      "ymin_final", "ymax_final",
      "lower", "middle", "upper"
    ),
    scale_name = "position_c",
    palette = scales::identity_pal()(1),
    name = name,
    breaks = breaks,
    labels = labels,
    limits = limits,
    expand = expand,
    oob = oob,
    na.value = na.value,
    trans = trans,
    position = position
  )
}
