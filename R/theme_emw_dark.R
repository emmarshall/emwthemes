#' Custom dark ggplot2 theme for Personal use
#'
#' @param base_family Base font family (default: "Architects Daughter")
#' @param base_size Base font size (default: 10.5)
#' @param with.panel.grid Include panel grid (default: FALSE)
#' @param text.color Text color (default: "#19647E")
#' @param title.color Title color (default: "#F8F8F2")
#' @param plot.background.color Plot background color (default: "#282a36")
#' @param axis.text.color Axis text color (default: "#f8f8f2")
#' @param axis.text.size Axis text size (default: calculated)
#' @param subtitle.text.size Subtitle text size (default: calculated)
#' @param title.text.size Title text size (default: calculated)
#' @param caption_family Caption font family (default: base_family)
#' @param caption_size Caption font size (default: 11)
#' @param caption_face Caption font face (default: "plain")
#' @param caption_margin Caption margin (default: 14)
#' @param axis_title_just Axis title justification (default: "rt")
#' @param plot_margin Plot margin (default: specified)
#' @param base_theme Base ggplot2 theme (default: theme_minimal())
#'
#' @return A ggplot2 theme object.
#'
#' @export

theme_emw_dark <- function(
    base_family = "daughter",
    base_size = 10.5,
    with.panel.grid = FALSE,
    text.color = "#ff6361",
    title.color = "#F8F8F2",  # Added this line for title color
    plot.background.color = "#282a36",
    axis.text.color = "#f8f8f2",
    axis.text.size = base_size * 3/4,
    subtitle.text.size = base_size * 1.25,
    title.text.size = base_size * 1.75,
    caption_family = base_family,
    caption_size = 11,
    caption_face = "plain",
    caption_margin = 14,
    axis_title_just = "rt",
    plot_margin = ggplot2::margin(30, 30, 30, 30),
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
        color = "#282a36"
      ),
      panel.background = ggplot2::element_blank(),
      panel.grid = ggplot2::element_line(
        color = if (with.panel.grid) axis.text.color else "transparent",
        linetype = 1  # Change to the desired line type
      ),
      axis.text = ggplot2::element_text(
        color = axis.text.color,
        size = axis.text.size
      ),
      legend.position = "none",
      title = ggplot2::element_text(
        family = "archivo",
        color = title.color,
        size =  title.text.size)  # Use the provided title color
    )
}

