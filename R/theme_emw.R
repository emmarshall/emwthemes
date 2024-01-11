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
    title.color = "#ff6361",  # Added this line for title color
    plot.background.color = "#f8f8f2",
    axis.text.color = "#282a36",
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
        color = "#fff"
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



emw_palette <- c(
  "#ff6361", # coral
  "#FFB86C", # orange
  "#F1FA8C", # yellow
  "#50FA7B", # green
  "#19647E", # purple
  "#8BE9FD", # cyan
  "#FF79C6",  # pink
  "#ff8281", #light coral
  "#3DD6D0"  # cyan
)

#' A bright qualitative color palette
#'
#' @export
#' @examples
#' library(scales)
#' scales::show_col(emw_pal()(9))
emw_pal <- function() {
  emw_palette <- c(
    "#ff6361", # coral
    "#FFB86C", # orange
    "#F1FA8C", # yellow
    "#50FA7B", # green
    "#19647E", # purple
    "#8BE9FD", # cyan
    "#FF79C6",  # pink
    "#ff8281", #light coral
    "#3DD6D0"  # cyan
  )
  scales::manual_pal(emw_palette)
}

#' Discrete color & fill scales based on the FT palette
#'
#' See [emw_pal()].
#'
#' @md
#' @inheritDotParams ggplot2::discrete_scale -expand -position
#' @rdname scale_emw
#' @export
scale_colour_emw <- function(...) { ggplot2::discrete_scale("colour", "emw", emw_pal(), ...) }

#' @export
#' @rdname scale_emw
scale_color_emw <- scale_colour_emw

#' @export
#' @rdname scale_emw
scale_fill_emw <- function(...) { ggplot2::discrete_scale("fill", "emw", emw_pal(), ...) }

