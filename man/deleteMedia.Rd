% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/deleteMedia.R
\name{deleteMedia}
\alias{deleteMedia}
\title{Delete a transcript's media file}
\usage{
deleteMedia(labbcat.url, id, file.name)
}
\arguments{
\item{labbcat.url}{URL to the LaBB-CAT instance}

\item{id}{The ID transcript whose media will be deleted.}

\item{file.name}{The media file name, e.g. media.file$name}
}
\description{
This function deletes the given media file associated with the given transcript.
}
\details{
For this function to work, the credentials used to connect to the server must have at
least 'edit' access.
}
\examples{
\dontrun{
## delete the mp3 file of a transcript from the server
deleteMedia(labbcat.url, "my-transcript.eaf", "my-transcript.mp3")
}
}
\seealso{
\itemize{
\item \link{getAvailableMedia}
\item \link{saveMedia}
}
}
\keyword{management}
\keyword{transcript}
