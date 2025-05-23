% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getSerializerDescriptors.R
\name{getSerializerDescriptors}
\alias{getSerializerDescriptors}
\title{Lists the descriptors of all registered serializers}
\usage{
getSerializerDescriptors(labbcat.url)
}
\arguments{
\item{labbcat.url}{URL to the LaBB-CAT instance}
}
\value{
A list of serializers, each including the following information:
\itemize{
\item \emph{name} The name of the format.
\item \emph{version} The installed version of the serializer module.
\item \emph{fileSuffixes} The normal file name suffixes (extensions) of the files.
\item \emph{mimeType} The MIME type of the format, i.e. the value to use as the
\emph{mimeType} parameter of \link{getFragments}
}
}
\description{
Returns a list of serializers, which are modules that export annotation structures as
a specific file format, e.g. Praat TextGrid, plain text, etc., so the
\emph{mimeType} of descriptors reflects what \emph{mimeType}s can be specified for
\link{getFragments}.
}
\examples{
\dontrun{
## List file export formats supported
formats <- getSerializerDescriptors("https://labbcat.canterbury.ac.nz/demo/")

## can we export as plain text?
plainTextSupported <- "text/plain" \%in\% formats$mimeType
}

}
\seealso{
\link{getFragments}
}
\keyword{format}
