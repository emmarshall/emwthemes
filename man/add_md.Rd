% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/add_md.R
\name{add_md}
\alias{add_md}
\title{Add ability to render text as markdown within theme}
\usage{
add_md(theme, all_plain = TRUE)
}
\arguments{
\item{theme}{An object of class \code{theme}}

\item{all_plain}{\code{logical}. Should all text be plain by default?}
}
\value{
An object of class \code{theme} that can be added to any \code{ggplot}
}
\description{
Adapted from \code{{mdthemes}} function to provide option to render text as markdown within \code{{ggplot2}} theme
}
\examples{
library(ggplot2)
data(mtcars)

# Create a custom theme
my_theme <- theme_gray() +
  theme(
    panel.grid.minor = element_blank(),
    panel.grid.major = element_blank()
  )
p <- ggplot(mtcars, aes(hp)) +
  geom_histogram() +
  ggtitle("Mixing **bold** and *italics* is easy")

# Text is not rendered
p + my_theme

# Text is rendered properly
p + add_md(theme_emw)

}
