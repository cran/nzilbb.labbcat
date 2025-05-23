% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/deprec-getGraphIds.R
\name{getGraphIds}
\alias{getGraphIds}
\title{Deprecated synonym for getTranscriptIds.}
\usage{
getGraphIds(labbcat.url)
}
\arguments{
\item{labbcat.url}{URL to the LaBB-CAT instance}
}
\value{
A list of graph IDs
}
\description{
Returns a list of graph IDs (i.e. transcript names).
}
\examples{
\dontrun{
## List all transcripts
transcripts <- getGraphIds("https://labbcat.canterbury.ac.nz/demo/")
}

}
\seealso{
\code{\link{getTranscriptIds}}
}
\keyword{transcript}
