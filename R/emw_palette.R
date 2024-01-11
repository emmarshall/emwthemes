#' Custom dark color palette
#'
#' @param num_cols Number of colors to generate
#' @param var_type Variable type ("discrete" or "continuous")
#'
#' @return A vector of color codes.
#'
#' @export

emw_pal <- c(
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

emw_palette <- function(num_cols, var_type = c("discrete", "continuous")) {
  type <- match.arg(var_type)

  if (missing(num_cols)) {
    num_cols <- length(emw_pal)
  }

  emw <- switch(
    type,
    # Recycles palette colors to desired discrete length
    "discrete"   = rep(emw_pal, length.out = num_cols),
    # Interpolates colors
    "continuous" = grDevices::colorRampPalette(emw_pal)(num_cols)
  )

  structure(
    emw,
    name  = "emw",
    class = "palette"
  )
}

