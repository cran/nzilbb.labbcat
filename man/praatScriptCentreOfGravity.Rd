% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/praatScriptCentreOfGravity.R
\name{praatScriptCentreOfGravity}
\alias{praatScriptCentreOfGravity}
\title{Generates a script for extracting the CoG, for use with \link{processWithPraat}}
\usage{
praatScriptCentreOfGravity(powers = c(2), spectrum.fast = TRUE)
}
\arguments{
\item{powers}{A vector of numbers specifying which powers to query for to extract, e.g.
c(1.0,2.0).}

\item{spectrum.fast}{Whether to use the 'fast' option when creating the spectrum object
to query.}
}
\value{
A script fragment which can be passed as the praat.script parameter of
\link{processWithPraat}
}
\description{
This function generates a Praat script fragment which can be passed as the praat.script
parameter of \link{processWithPraat}, in order to extract one or more spectral centre
of gravity (CoG) measurements.
}
\examples{
\dontrun{
## Perform a search
results <- getMatches(labbcat.url, list(segment="I"))

## Get centres of gravity for all matches
cog <- processWithPraat(
              labbcat.url,
              results$MatchId, results$Target.segment.start, results$Target.segment.end,
              praatScriptCentreOfGravity(powers=c(1.0,2.0)))
}
}
\seealso{
Other Praat-related functions: 
\code{\link{praatScriptFastTrack}()},
\code{\link{praatScriptFormants}()},
\code{\link{praatScriptIntensity}()},
\code{\link{praatScriptPitch}()},
\code{\link{processWithPraat}()}
}
\concept{Praat-related functions}
\keyword{praat}
