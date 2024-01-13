#' Custom dark ggplot2 theme for Personal use
#'
#' @param base_family Base font family (default: "Architects Daughter")
#' @param base_size Base font size (default: 10.5)
#' @param with.panel.grid Include panel grid (default: FALSE)
#' @param with.axis.line Include axis line (default: FALSE)
#' @param text.color Text color (default: "#f8f8f2")
#' @param title.color Title color (default: "#ff8281")
#' @param subtitle.color Title color (default: "#787b83")
#' @param plot.background.color Plot background color (default: "#424651")
#' @param axis.text.color Axis text color (default: "#f8f8f2",)
#' @param axis.text.size Axis text size (default: calculated)
#' @param subtitle.text.size Subtitle text size (default: calculated)
#' @param title.text.size Title text size (default: calculated)
#' @param caption_family Caption font family (default: base_family)
#' @param caption_size Caption font size (default: 10)
#' @param caption_face Caption font face (default: "plain")
#' @param caption_margin Caption margin (default: 14)
#' @param subtitle_margin Subtitle margin (default: 15)
#' @param title_margin Title margin (default: 10)
#' @param plot_margin Plot margin (default: specified)
#' @param base_theme Base ggplot2 theme (default: theme_minimal())
#'
#' @return A ggplot2 theme object.
#'
#' @export
theme_emw_dark <- function(
    base_family = "Metropolis",
    base_size = 10.5,
    with.panel.grid = FALSE,
    with.axis.line = FALSE,
    text.color = "#e0e0e0",
    title.color = "#f1f1f1",
    subtitle.color = "#bcbcbe",
    plot.background.color = "#303036",
    axis.text.color = "#bcbcbe",
    axis.text.size = base_size,
    subtitle.text.size = base_size * 1.35,
    title.text.size = base_size * 1.75,
    title_margin = 10,
    subtitle_margin = 15,
    caption_family = base_family,
    caption_size = base_size * 3/4,
    caption_face = "plain",
    caption_margin = 12,
    plot_margin = ggplot2::margin(20,20,20,20),
    base_theme = ggplot2::theme_minimal()
) {

  if (!is.null(base_family)) check_font(base_family)

  base_theme +
    ggplot2::theme(
      text = ggplot2::element_text(
        family = base_family,
        size = base_size,
        color = text.color
      ),
      plot.background = ggplot2::element_rect(
        fill = plot.background.color,
        color = "#303036"
      ),
      panel.background = ggplot2::element_blank(),
      panel.grid = ggplot2::element_line(
        color = if (with.panel.grid) axis.text.color else "transparent",
        linetype = 1  # Change to the desired line type
      ),
      legend.position = "none",
      axis.text = ggplot2::element_text(
        family = base_family,
        color = axis.text.color,
        size = axis.text.size
      ),
      axis.title = ggplot2::element_text(
        family = base_family,
        color = axis.text.color,
        size = subtitle.text.size,
        margin = ggplot2::margin(t = subtitle_margin),
        hjust = 1),
      axis.line = ggplot2::element_line(
        color = if (with.axis.line) axis.text.color else "transparent",
        linetype = 1.5
      ),
      title = ggplot2::element_text(
        family = base_family,
        face = "bold",
        color = title.color,
        margin = ggplot2::margin(b = title_margin),
        size =  title.text.size),
      plot.subtitle = ggplot2::element_text(
        family = base_family,
        color = subtitle.color,
        margin = ggplot2::margin(b = subtitle_margin),
        size = subtitle.text.size
      ),
    )

}

#' Change geom defaults from black to custom lights for the Dark theme
#'
#' @export
dark_geom_defaults <- function() {

  geoms <- c("abline", "area", "bar", "boxplot", "col", "crossbar",
             "density", "dotplot", "errorbar", "errorbar",
             "hline", "line", "linerange",
             "map", "path", "point", "polygon", "rect", "ribbon", "rug", "segment",
             "step", "tile", "violin", "vline")

  for (g in geoms) {
    ggplot2::update_geom_defaults(g, list(colour = "#ff6361", fill = "#ff6361"))
  }

  geoms <- c("text", "label")

  for (g in geoms) {
    ggplot2:: update_geom_defaults(g, list(colour = "#f1f1f1", fill = "#cdcdce"))
  }

}

#' Custom dark EMW palette
#'
#' @return A vector of dark EMW colors
#'
#' @export
dark_pal <- c(
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

#' Custom dark EMW palette function
#'
#' @param num_cols Number of colors to return.
#' @param var_type Type of palette (discrete or continuous).
#'
#' @return A function that generates the EMW palette.
#'
#' @export
dark_palette <- function(num_cols, var_type = c("discrete", "continuous")) {
  type <- match.arg(var_type)

  if (missing(num_cols)) {
    num_cols <- length(dark_pal)
  }

  dark <- switch(
    type,
    # Recycles palette colors to desired discrete length
    "discrete"   = rep(dark_pal, length.out = num_cols),
    # Interpolates colors
    "continuous" = grDevices::colorRampPalette(dark_pal)(num_cols)
  )

  structure(
    dark,
    name  = "dark",
    class = "palette"
  )
}
