% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/praatScriptIntensity.R
\name{praatScriptIntensity}
\alias{praatScriptIntensity}
\title{Generates a script for extracting maximum intensity, for use with \link{processWithPraat}}
\usage{
praatScriptIntensity(
  minimum.pitch = 100,
  time.step = 0,
  subtract.mean = TRUE,
  get.maximum = TRUE,
  sample.points = NULL,
  interpolation = "cubic",
  skip.errors = TRUE
)
}
\arguments{
\item{minimum.pitch}{Minimum pitch (Hz).}

\item{time.step}{Time step in seconds, or 0.0 for 'auto'.}

\item{subtract.mean}{Whether to subtract the mean or not.}

\item{get.maximum}{Extract the maximum intensity for the sample.}

\item{sample.points}{A vector of numbers (0 <= sample.points <= 1) specifying multiple
points at which to take the measurement.  The default is NULL, meaning no
individual measurements will be taken (only the aggregate values identified by
get.mean, get.minimum, and get.maximum).  A single point at 0.5 means one
measurement will be taken halfway through the target interval.  If, for example,
you wanted eleven measurements evenly spaced throughout the interval, you would
specify sample.points as being
c(0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0).}

\item{interpolation}{If sample.points are specified, this is the interpolation to use
when getting individual values. Possible values are 'nearest', 'linear', 'cubic',
'sinc70', or 'sinc700'.}

\item{skip.errors}{Sometimes, for some segments, Praat fails to create an Intensity
object. If skip.errors = TRUE, analysis those segments will be skipped, and corresponding
pitch values will be returned as "--undefined--". If skip.errors = FALSE, the error
message from Praat will be returned in the Error field, but no pitch measures will
be returned for any segments in the same recording.}
}
\value{
A script fragment which can be passed as the praat.script parameter of
\link{processWithPraat}
}
\description{
This function generates a Praat script fragment which can be passed as the praat.script
parameter of \link{processWithPraat}, in order to extract maximum intensity value.
}
\examples{
\dontrun{
## Perform a search
results <- getMatches(labbcat.url, list(segment="s"))

## Get max intensity, and intensity at three points during the segment, for all matches
intensity <- processWithPraat(
              labbcat.url,
              results$MatchId, results$Target.segment.start, results$Target.segment.end,
              praatScriptIntensity(sample.points = c(.25, .5, .75)))
}
}
\seealso{
Other Praat-related functions: 
\code{\link{praatScriptCentreOfGravity}()},
\code{\link{praatScriptFastTrack}()},
\code{\link{praatScriptFormants}()},
\code{\link{praatScriptPitch}()},
\code{\link{processWithPraat}()}
}
\concept{Praat-related functions}
\keyword{praat}
