% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/helpers.R
\name{.makeSidebar}
\alias{.makeSidebar}
\title{Shortcut for making the status sidebar}
\usage{
.makeSidebar(status, key, pwfCols, usePlotly = TRUE)
}
\arguments{
\item{status}{A data.frame with columns 'Filename' & 'Status'}

\item{key}{A vector of values corresponding to the Filename column}

\item{pwfCols}{An object of class PwfCols}

\item{usePlotly}{If TRUE, output is a plotly panel}
}
\value{
if \code{usePlotly = TRUE}, a plotly object. The sidebar for an interactive plot
showing PASS/WARN/FAIL status for each file. If \code{usePlotly = FALSE} the
underlying \code{ggplot} object will be returned.
}
\description{
Shortcut for making the status sidebar
}
\keyword{internal}
