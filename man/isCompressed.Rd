% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/isCompressed.R
\name{isCompressed}
\alias{isCompressed}
\title{Check to see if a file is compressed}
\usage{
isCompressed(path, type = "zip")
}
\arguments{
\item{path}{The path to one or more files}

\item{type}{The type of compression to check for.
Currently only ZIP files have been implemented.}
}
\value{
A \code{logical} vector
}
\description{
Check to see if a file, or vector of files is compressed
}
\details{
Reads the first four bytes from the local file header.
If the file is a .ZIP file, this should match the magic number \code{PK\003\004}.

This function assumes that the first thing in a zip archive is the
.ZIP entry with the local file header signature.
ZIP files containing a self-extracting archive may not exhibit this structure
and will return FALSE
}