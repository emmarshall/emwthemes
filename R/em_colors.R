
ft_pal <- c(
  "#ff8281", #light-coral
  "#235789", #lapis-lazuli
  "#F4EEA9", #icterine
  "#FCBF49", #xanthous
  "#03CEA4", #mint
  "#3C887E", #dark-cyan
  "#1985A1", #blue
  "#4C5C68", #paynes-gray
  "#303036" #jet
)

#' A personal color palette to use with ggplot
#'
#' @export
#' @examples
#' library(scales)
#' scales::show_col(ft_pal()(9))
ft_pal <- function() {
  ft_palette <- c(
    "#ff8281", #light-coral
    "#235789", #lapis-lazuli
    "#F4EEA9", #icterine
    "#FCBF49", #xanthous
    "#03CEA4", #mint
    "#3C887E", #dark-cyan
    "#1985A1", #blue
    "#4C5C68", #paynes-gray
    "#303036" #jet
  )
  scales::manual_pal(ft_palette)
}

#' Discrete color & fill scales based on the FT palette
#'
#' See [ft_pal()].
#'
#' @md
#' @inheritDotParams ggplot2::discrete_scale -expand -position
#' @rdname scale_ft
#' @export
scale_colour_ft <- function(...) { ggplot2::discrete_scale("colour", "ft", ft_pal(), ...) }

#' @export
#' @rdname scale_ft
scale_color_ft <- scale_colour_ft

#' @export
#' @rdname scale_ft
scale_fill_ft <- function(...) { ggplot2::discrete_scale("fill", "ft", ft_pal(), ...) }


br_pal <- c(
  "#ff6361",  # coral
  "#FFB86C",  # orange
  "#F1FA8C",  # yellow
  "#50FA7B",  # green
  "#19647E",  # purple
  "#8BE9FD",  # cyan
  "#FF79C6",  # pink
  "#85FFC7", #aquamarine
  "#F9F9F9" #seasalt
)

#' A personal color palette to use with ggplot
#'
#' @export
#' @examples
#' library(scales)
#' scales::show_col(br_pal()(9))
br_pal <- function() {
br_palette <- c(
  "#ff6361",  # coral
  "#FFB86C",  # orange
  "#F1FA8C",  # yellow
  "#50FA7B",  # green
  "#19647E",  # purple
  "#8BE9FD",  # cyan
  "#FF79C6",  # pink
  "#85FFC7", #aquamarine
  "#F9F9F9" #seasalt
  )
  scales::manual_pal(br_palette)
}

#' Discrete color & fill scales based on the br palette
#'
#' See [br_pal()].
#'
#' @md
#' @inheritDotParams ggplot2::discrete_scale -expand -position
#' @rdname scale_br
#' @export
scale_colour_br <- function(...) { ggplot2::discrete_scale("colour", "br", br_pal(), ...) }

#' @export
#' @rdname scale_br
scale_color_br <- scale_colour_br

#' @export
#' @rdname scale_br
scale_fill_br <- function(...) { ggplot2::discrete_scale("fill", "br", br_pal(), ...) }

