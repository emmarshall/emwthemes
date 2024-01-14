
#' Custom ggplot2 theme for Personal use
#'
#' @param base_family Base font family (default: "DM Sans")
#' @param base_size Base font size (default: 10.5)
#' @param with.panel.grid Include panel grid (default: FALSE)
#' @param with.axis.line Include axis line (default: TRUE)
#' @param text.color Text color (default: "#19647E")
#' @param title.color Title color (default: "#F8F8F2")
#' @param subtitle.color Subtitle color (default: "#6a6d76")
#' @param plot.background.color Plot background color (default: "white")
#' @param axis.text.color Axis text color (default: "#F8F8F2")
#' @param axis.text.size Axis text size (default: calculated)
#' @param title.text.size Title text size (default: calculated)
#' @param subtitle.text.size Subtitle text size (default: calculated)
#' @param caption_family Caption font family (default: base_family)
#' @param caption_size Caption font size (default: 10)
#' @param caption_face Caption font face (default: "plain")
#' @param caption_margin Caption margin (default: 12)
#' @param subtitle_margin Subtitle margin (default: 15)
#' @param title_margin Title margin (default: 10)
#' @param plot_margin Plot margin (default: specified)
#' @param base_theme Base ggplot2 theme (default: theme_minimal())
#'
#' @return A ggplot2 theme object.
#'
#' @export

theme_emw <- function(
    base_family = "Metropolis",
    base_size = 10.5,
    with.panel.grid = FALSE,
    with.axis.line = TRUE,
    text.color = "#424651",
    title.color = "#424651",
    subtitle.color = "#6a6d76",
    plot.background.color = "#fefefe",
    axis.text.color = "#6a6d76",
    axis.text.size = base_size,
    subtitle.text.size = base_size * 1.35,
    title.text.size = base_size * 1.75,
    caption_family = base_family,
    caption_size = base_size * 3/4,
    caption_face = "plain",
    caption_margin = 12,
    title_margin = 10,
    subtitle_margin = 15,
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
        color = "#f1f1f1"
      ),
      panel.background = ggplot2::element_blank(),
      panel.grid = ggplot2::element_line(
        color = if (with.panel.grid) axis.text.color else "transparent",
        linetype = 1
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
        face = "bold",
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


#' Update matching font defaults for text geoms
#'
#' Updates [ggplot2::geom_label] and [ggplot2::geom_text] font defaults
#' @importFrom ggrepel GeomTextRepel GeomLabelRepel
#'
#' @param family Font family, default "Architects Daughter".
#' @param face Font face, default "plain".
#' @param size font size in mm.
#' @param color Font color, default "#ff6361".
#'
#' @export

update_geom_fonts_emw <- function(
    family = "Architects Daughter",
    face = "plain",
    size = 7,
    color = "#ff6361") {
  ggplot2::update_geom_defaults(
    "text",
    list(family = family, face = face, size = size, color = color)
  )
  ggplot2::update_geom_defaults(
    "label",
    list(family = family, face = face, size = size, color = color, fill = color)
  )
  ggplot2::update_geom_defaults(
    "text_repel",
    list(family = family, face = face, size = size, color = color)
  )
  ggplot2::update_geom_defaults(
    "label_repel",
    list(family = family, face = face, size = size, color = color)
  )
}


emw_palette <- c("#ff6361", "#FFD166", "#2AFC98", "#19647E", "#FFFD82", "#34435E", "#73EEDC", "#2E6171", "#32373B")


#' A personal color palette to use with ggplot
#'
#' @export
#' @examples
#' library(scales)
#' scales::show_col(emw_pal()(9))
emw_pal <- function() {
  emw_palette <- c("#ff6361", "#FFD166", "#2AFC98", "#19647E", "#FFFD82", "#34435E", "#73EEDC", "#2E6171", "#32373B")

  scales::manual_pal(emw_palette)
}

#' Discrete color & fill scales based on the emw palette
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


