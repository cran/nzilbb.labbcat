% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/deleteParticipant.R
\name{deleteParticipant}
\alias{deleteParticipant}
\title{Deletes a participant record}
\usage{
deleteParticipant(labbcat.url, id)
}
\arguments{
\item{labbcat.url}{URL to the LaBB-CAT instance}

\item{id}{The participant ID - either the unique internal database ID, or their name.}
}
\value{
TRUE if the participant's record was delete, FALSE otherwise.
}
\description{
This function deletes the identified participant from the corpus, but only if they do
not appear in any transcripts.
}
\examples{
\dontrun{
## Create a new participant record
saveParticipant(labbcat.url, "Juan Perez")

### Delete the participant we just created
deleteParticipant(labbcat.url, "Juan Perez")
}

}
\seealso{
\itemize{
\item \link{getParticipant}
\item \link{saveParticipant}
}
}
\keyword{participant}
