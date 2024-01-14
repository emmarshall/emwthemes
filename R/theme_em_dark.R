#' A [ggplot2] theme for dark personal use
#'
#'There is an option adapted from \code{theme_ib} to convert
#'theme use markdown theme elements (`md = TRUE`) to use markdown
#'theme elements from `ggtext` instead of `element_text()`.
#'
#' @md
#' @param title_family title elements font family
#' @param text_family text elements font family
#' @param base_size base font size
#' @param title_color color of the title elements
#' @param text_color color of the text elements
#' @param bg_color plot background color
#' @param line_color color of line elements
#' @param plot_margin plot margin specifications
#' @param with.grid Include panel grid (default: FALSE)
#' @param with.line Include axis line (default: FALSE)
#' @param md indicate whether to use markdown elements for text
#' @export

theme_em_dark <- function(title_family = "Architects Daughter",
                     text_family = "MonoLisa emw",
                     base_size = 10.5, title_color = "#ff6361",
                     text_color = "#FFFDF7",
                     bg_color = "#282a36", line_color = "#A0ACAD",
                     plot_margin = ggplot2::margin(20,20,20,20),
                     with.grid = FALSE, with.line = FALSE,
                     md = FALSE) {

  if (md == FALSE) {
    ggplot2::theme_minimal() +
      ggplot2::theme(
        text = ggplot2::element_text(family = text_family,
                                     size = base_size,
                                     color = text_color),
        title = ggplot2::element_text(family = title_family,
                                      color = text_color),
        line = ggplot2::element_line(color = line_color),

        plot.title = ggplot2::element_text(face = "bold",
                                           color = title_color,
                                           size = base_size * 2.2,
                                           lineheight = 1.2),
        plot.title.position = "plot",
        plot.subtitle = ggplot2::element_text(size = base_size * 1.5,
                                              family = text_family,
                                              lineheight = 1.2),
        plot.margin = plot_margin,
        plot.background = ggplot2::element_rect(fill = bg_color,
                                                color = bg_color),
        panel.grid = ggplot2::element_line(
          color = if (with.grid) line_color else "transparent",
          linetype = 1
        ),
        axis.text = ggplot2::element_text(size = base_size * 1.2),
        axis.title = ggplot2::element_text(size = base_size * 1.6,
                                           hjust = 1),
        axis.line = ggplot2::element_line(
          color = if (with.line) line_color else "transparent",
          linetype = 1.5
        ),
        legend.title = ggplot2::element_text(size = base_size * 1.7),
        legend.text = ggplot2::element_text(size = base_size * 1.1)
      )
  } else if (md == TRUE) {
    ggplot2::theme_minimal() +
      ggplot2::theme(
        text = ggplot2::element_text(family = text_family,
                                     size = base_size,
                                     color = text_color),
        title = ggtext::element_markdown(family = title_family,
                                         color = text_color),
        line = ggplot2::element_line(color = line_color),

        plot.title = ggtext::element_markdown(face = "bold",
                                              size = base_size * 2.2,
                                              lineheight = 1.2),
        plot.title.position = "plot",
        plot.subtitle = ggtext::element_markdown(size = base_size * 1.7,
                                                # family = text_family,
                                                 color = text_color,
                                                 lineheight = 1.2),
        plot.margin = plot_margin,
        plot.background = ggplot2::element_rect(fill = bg_color,
                                                color = bg_color),
        panel.grid = ggplot2::element_line(
          color = if (with.grid) line_color else "transparent",
          linetype = 1
        ),

        axis.text = ggplot2::element_text(size = base_size * 1.2,
                                          color = text_color),
        axis.title = ggtext::element_markdown(size = base_size * 1.6,
                                              color = text_color,
                                              hjust = 1),
        axis.line = ggplot2::element_line(
          color = if (with.line) line_color else "transparent",
          linetype = 1.5
        ),

        legend.position = "none"
      )
  } else {
    ggplot2::theme_minimal(base_size = base_size) +
      ggplot2::theme(
        text = ggplot2::element_text(family = text_family,
                                     color = text_color),
        title = ggplot2::element_text(family = title_family),
        line = ggplot2::element_line(color = line_color),

        plot.title = ggplot2::element_text(face = "bold",
                                           lineheight = 1.2),
        plot.title.position = "plot",
        plot.subtitle = ggplot2::element_text(family = text_family,
                                              lineheight = 1.2),
        plot.margin = plot_margin,
        plot.background = ggplot2::element_rect(fill = bg_color,
                                                color = bg_color),

        panel.grid = ggplot2::element_line(
          color = if (with.grid) line_color else "transparent",
          linetype = 1
        ),

        legend.position = "none",
        axis.title = ggplot2::element_text(hjust = 1),
        axis.line = ggplot2::element_line(
          color = if (with.line) line_color else "transparent",
          linetype = 1.5
        ),
      )
  }
}
