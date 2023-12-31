% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotOverrep.R
\docType{methods}
\name{plotOverrep}
\alias{plotOverrep}
\alias{plotOverrep,ANY-method}
\alias{plotOverrep,character-method}
\alias{plotOverrep,FastqcData-method}
\alias{plotOverrep,FastqcDataList-method}
\title{Plot a summary of Over-represented Sequences}
\usage{
plotOverrep(
  x,
  usePlotly = FALSE,
  labels,
  pattern = ".(fast|fq|bam).*",
  pwfCols,
  ...
)

\S4method{plotOverrep}{ANY}(
  x,
  usePlotly = FALSE,
  labels,
  pattern = ".(fast|fq|bam).*",
  pwfCols,
  ...
)

\S4method{plotOverrep}{character}(
  x,
  usePlotly = FALSE,
  labels,
  pattern = ".(fast|fq|bam).*",
  pwfCols,
  ...
)

\S4method{plotOverrep}{FastqcData}(
  x,
  usePlotly = FALSE,
  labels,
  pattern = ".(fast|fq|bam).*",
  pwfCols,
  n = 10,
  expand.x = c(0, 0, 0.05, 0),
  expand.y = c(0, 0.6, 0, 0.6),
  plotlyLegend = FALSE,
  ...
)

\S4method{plotOverrep}{FastqcDataList}(
  x,
  usePlotly = FALSE,
  labels,
  pattern = ".(fast|fq|bam).*",
  pwfCols,
  showPwf = TRUE,
  cluster = FALSE,
  dendrogram = FALSE,
  scaleFill = NULL,
  paletteName = "Set1",
  panel_w = 8,
  expand.x = c(0, 0, 0.05, 0),
  expand.y = rep(0, 4),
  ...
)
}
\arguments{
\item{x}{Can be a \code{FastqcData}, \code{FastqcDataList} or file paths}

\item{usePlotly}{\code{logical} Default \code{FALSE} will render using
ggplot. If \code{TRUE} plot will be rendered with plotly}

\item{labels}{An optional named factor of labels for the file names.
All filenames must be present in the names.}

\item{pattern}{Regex to remove from the end of any filenames}

\item{pwfCols}{Object of class \code{\link[=PwfCols]{PwfCols()}} containing the colours
for PASS/WARN/FAIL}

\item{...}{Used to pass additional attributes to theme() and between methods}

\item{n}{The number of sequences to plot from an individual file}

\item{expand.x, expand.y}{Output from \code{expansion()} or numeric
vectors of length 4. Passed to \verb{scale_*_continuous()}}

\item{plotlyLegend}{Show legend on interactive plots}

\item{showPwf}{Show PASS/WARN/FAIL status on the plot}

\item{cluster}{\code{logical} default \code{FALSE}. If set to \code{TRUE},
fastqc data will be clustered using hierarchical clustering}

\item{dendrogram}{\code{logical} redundant if \code{cluster} is \code{FALSE}
if both \code{cluster} and \code{dendrogram} are specified as \code{TRUE}
then the dendrogram will be displayed.}

\item{scaleFill}{ggplot scale object}

\item{paletteName}{Name of the palette for colouring the possible sources
of the overrepresented sequences. Must be a palette name from
\code{RColorBrewer}. Ignored if specifying the scaleFill separately}

\item{panel_w}{Width of main panel on output}
}
\value{
A standard ggplot2 object
}
\description{
Plot a summary of Over-represented Sequences for a set of
FASTQC reports
}
\details{
Percentages are obtained by simply summing those within a report.
Any possible double counting by FastQC is ignored for the purposes of a
simple approximation.

Plots generated from a \code{FastqcData} object will show the top \code{n}
sequences grouped by their predicted source & coloured by whether the
individual sequence would cause a WARN/FAIL.

Plots generated from a \code{FastqcDataList} group sequences by predicted
source and summarise as a percentage of the total reads.
}
\examples{

# Get the files included with the package
packageDir <- system.file("extdata", package = "ngsReports")
fl <- list.files(packageDir, pattern = "fastqc.zip", full.names = TRUE)

# Load the FASTQC data as a FastqcDataList object
fdl <- FastqcDataList(fl)

# A brief summary across all FastQC reports
plotOverrep(fdl)

}
