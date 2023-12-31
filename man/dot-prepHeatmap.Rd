% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/helpers.R
\name{.prepHeatmap}
\alias{.prepHeatmap}
\title{Prepare the final heatmap for plotting}
\usage{
.prepHeatmap(x, status, segments, usePlotly, heat_w = 8, pwf, hv = NULL)
}
\arguments{
\item{x}{a ggplot2 heatmap produced by ngsReports}

\item{status}{a tibble with the columns Filename and Status}

\item{segments}{a dendrogram produced during clustering of samples}

\item{usePlotly}{logical(1)}

\item{hv}{character vector of fields to include in hoverinfo}
}
\value{
Either a ggplot2 object assembled using patchwork, or an interactive plotly
object
}
\description{
Add dendrogarm & status bar to ggplot2 heatmap
}
\keyword{internal}
