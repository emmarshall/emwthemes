#' A [ggplot2] theme for personal use
#'
#'There is an option adapted from \code{theme_ib} to convert
#'theme use markdown theme elements (`md = TRUE`) to use markdown
#'theme elements from `ggtext` instead of `element_text()`.
#'
#' @md
#' @param title_family title elements font family
#' @param text_family text elements font family
#' @param base_size base font size
#' @param text_color color of the text & title elements
#' @param bg_color plot background color
#' @param line_color color of line elements
#' @param plot_margin plot margin specifications
#' @param text_margin margin around text
#' @param md indicate whether to use markdown elements for text
#' @export

theme_em <- function(title_family = "Permanent Marker",
                     text_family = "Permanent Marker",
                     base_size = 11, text_color = "#2F2D2E",
                     bg_color = "#fefefe", line_color = "gray50",
                     plot_margin = ggplot2::margin(0.5, 1, 0.5, 1, unit = "cm"),
                     text_margin = ggplot2::margin(0.2, 0, 1, 0, unit = "cm"),
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
        panel.border = ggplot2::element_blank(),
        strip.background = ggplot2::element_blank(),

        plot.title = ggplot2::element_text(face = "bold",
                                  size = base_size * 2,
                                  lineheight = 1.2),
        plot.title.position = "plot",
        plot.subtitle = ggplot2::element_text(size = base_size * 1.7,
                                     lineheight = 1.2,
                                     margin = text_margin),
        plot.margin = plot_margin,
        plot.background = ggplot2::element_rect(fill = bg_color,
                                       color = bg_color),
        axis.ticks = ggplot2::element_blank(),

        axis.text = ggplot2::element_text(size = base_size * 1.2),
        axis.title = ggplot2::element_text(size = base_size * 1.6,
                                  hjust = 1),
        axis.line = ggplot2::element_line(color = line_color),

        legend.title = ggplot2::element_text(size = base_size * 1.3),
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
        panel.border = ggplot2::element_blank(),
        strip.background = ggplot2::element_blank(),

        plot.title = ggtext::element_markdown(face = "bold",
                                              size = base_size * 2,
                                              lineheight = 1.2),
        plot.title.position = "plot",
        plot.subtitle = ggtext::element_markdown(size = base_size * 1.7,
                                                 lineheight = 1.2,
                                                 margin = text_margin),
        plot.margin = plot_margin,
        plot.background = ggplot2::element_rect(fill = bg_color,
                                       color = bg_color),
        axis.ticks = ggplot2::element_blank(),

        axis.text = ggplot2::element_text(size = base_size * 1.2),
        axis.title = ggtext::element_markdown(size = base_size * 1.6,
                                              hjust = 1),
        axis.line = ggplot2::element_line(color = line_color),

        legend.position = "none"
      )
  } else {
    ggplot2::theme_minimal(base_size = base_size) +
      ggplot2::theme(
        text = ggplot2::element_text(family = text_family,
                            color = text_color),
        title = ggplot2::element_text(family = title_family),
        line = ggplot2::element_line(color = line_color),
        panel.border = ggplot2::element_blank(),
        strip.background = ggplot2::element_blank(),

        plot.title = ggplot2::element_text(face = "bold",
                                  lineheight = 1.2),
        plot.title.position = "plot",
        plot.subtitle = ggplot2::element_text(lineheight = 1.2,  margin = text_margin),
        plot.margin = plot_margin,
        plot.background = ggplot2::element_rect(fill = bg_color,
                                       color = bg_color),
        legend.position = "none",
        axis.ticks = ggplot2::element_blank(),
        axis.title = ggplot2::element_text(hjust = 1),
        axis.line = ggplot2::element_line(color = line_color)
      )
  }

}


