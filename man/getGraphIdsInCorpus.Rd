% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/deprec-getGraphIdsInCorpus.R
\name{getGraphIdsInCorpus}
\alias{getGraphIdsInCorpus}
\title{Deprecated synonym for getTranscriptIdsInCorpus.}
\usage{
getGraphIdsInCorpus(labbcat.url, id)
}
\arguments{
\item{labbcat.url}{URL to the LaBB-CAT instance}

\item{id}{The ID (name) of the corpus}
}
\value{
A list of corpus IDs
}
\description{
Returns a list of corpora in the given 'LaBB-CAT' instance.
}
\examples{
\dontrun{
## List transcripts in the QB corpus
transcripts <- getGraphIdsInCorpus("https://labbcat.canterbury.ac.nz/demo/", "QB")
}

}
\seealso{
\code{\link{getGraphIdsInCorpus}}
}
\keyword{corpora}
\keyword{corpus}
