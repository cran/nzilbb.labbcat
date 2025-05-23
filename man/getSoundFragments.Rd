% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getSoundFragments.R
\name{getSoundFragments}
\alias{getSoundFragments}
\title{Gets sound fragments from 'LaBB-CAT'}
\usage{
getSoundFragments(
  labbcat.url,
  ids,
  start.offsets,
  end.offsets,
  sample.rate = NULL,
  path = "",
  no.progress = FALSE
)
}
\arguments{
\item{labbcat.url}{URL to the LaBB-CAT instance}

\item{ids}{The transcript ID (transcript name) of the sound recording, or
a vector of transcript IDs.}

\item{start.offsets}{The start time in seconds, or a vector of start times.}

\item{end.offsets}{The end time in seconds, or a vector of end times.}

\item{sample.rate}{Optional sample rate in Hz - if a positive
integer, then the result is a mono file with the given sample rate.}

\item{path}{Optional path to directory where the files should be saved.}

\item{no.progress}{TRUE to suppress visual progress bar. Otherwise, progress bar will be
shown when interactive().}
}
\value{
The name of the file, which is saved in the current
directory, or a list of names of files, if multiple
id's/start's/end's were specified

If a list of files is returned, they are in the order that they
were returned by the server, which \emph{should} be the order that
they were specified in the id/start/end lists.
}
\description{
Gets sound fragments from 'LaBB-CAT'
}
\examples{
\dontrun{
## Get the 5 seconds starting from 10s after the beginning of a recording
wav.file <- getSoundFragments(labbcat.url, "AP2505_Nelson.eaf", 10.0, 15.0, path="samples")

## Get the 5 seconds starting from 10s as a mono 22kHz file
wav.file <- getSoundFragments(labbcat.url, "AP2505_Nelson.eaf", 10.0, 15.0, 22050)

## Load some search results previously exported from LaBB-CAT
results <- read.csv("results.csv", header=T)

## Get a list of fragments
wav.files <- getSoundFragments(labbcat.url, results$Transcript, results$Line, results$LineEnd)

## Get a list of fragments
wav.file <- getSoundFragments(
              labbcat.url, results$Transcript, results$Line, results$LineEnd)
}
}
\keyword{fragment}
\keyword{sample}
\keyword{sound}
\keyword{wav}
