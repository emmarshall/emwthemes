
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



unl_pal <- c(
  "#d00000", #red
  "#FFD74F", #yellow
  "#f5f1e7", #cream
  "#c7c8ca", #gray
  "#249AB5", #cyan
  "#005D84", #blue
  "#F58A1F", #orange
  "#F5CCCC" #rose
)

#' A personal color palette to use with ggplot
#'
#' @export
#' @examples
#' library(scales)
#' scales::show_col(unl_pal()(7))
unl_pal <- function() {
  unl_palette <- c(
    "#d00000", #red
    "#FFD74F", #yellow
    "#249AB5", #cyan
    "#005D84", #blue
    "#f5f1e7", #cream
    "#c7c8ca", #gray
    "#F5CCCC" #rose
  )
  scales::manual_pal(unl_palette)
}

#' Discrete color & fill scales based on the UNL palette
#'
#' See [unl_pal()].
#'
#' @md
#' @inheritDotParams ggplot2::discrete_scale -expand -position
#' @rdname scale_unl
#' @export
scale_colour_unl <- function(...) { ggplot2::discrete_scale("colour", "unl", unl_pal(), ...) }

#' @export
#' @rdname scale_unl
scale_color_unl <- scale_colour_unl

#' @export
#' @rdname scale_unl
scale_fill_unl <- function(...) { ggplot2::discrete_scale("fill", "unl", unl_pal(), ...) }

# Definition of colors outside the function
unl_colors <- c(
  `unl red`        = "#d00000",
  `unl light red`  = "#F5cccc",
  `unl cream`      = "#f5f1e7",
  `light cream`    = "#fefdfa",
  `gray`           = "#c7c8ca",
  `dark gray`      = "#404040",
  `yellow`         = "#ffc425",
  `navy`           = "#001226",
  `blue`           = "#005d84",
  `light blue`     = "#249ab5",
  `orange`         = "#f58a1f",
  `green`          = "#bccb2a",
  `purple`         = "#a5228d"
)

#' Function to extract unl brand colors as hex codes
#'
#' @param ... Character names of unl_colors
#'
#' Example: unl_get_colors("blue", "green")
#' @export
#'
#' @return A vector of color hex codes
#' @description This function extracts University of Nebraska–Lincoln's brand colors in hex codes.
unl_get_colors <- function(...) {
  cols <- c(...)

  # Check whether colors were specified, if not return all colors
  if (length(cols) == 0) {
    return(unl_colors)
  } else {
    # Return only the specified colors
    return(unl_colors[cols])
  }
}



