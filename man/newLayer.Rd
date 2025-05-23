% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/newLayer.R
\name{newLayer}
\alias{newLayer}
\title{Creates a new layer}
\usage{
newLayer(
  labbcat.url,
  layer.id,
  description,
  type = "string",
  alignment = 0,
  category = "General",
  parent.id = "word",
  annotator.id = NULL,
  annotator.task.parameters = NULL
)
}
\arguments{
\item{labbcat.url}{URL to the LaBB-CAT instance}

\item{layer.id}{The ID of the layer to create, which must be unique to the LaBB-CAT instance.}

\item{description}{A description of the annotations the layer will contain.}

\item{type}{The type of data the labels will represent. Valid values are "string",
"number", "ipa" (for phoneme representations), or "boolean" (labels "0" or "1").}

\item{alignment}{How annotations on the layer will relate to time alignment; valid
values are 0 (no alignment; annototations are just tags on the parent annotation),
1 (instants; annotations mark a single point in time), or 2 (intervals; annotations
have a start and end time).}

\item{category}{The project/category the layer belongs to.}

\item{parent.id}{The parent layer; valid values are "word" (for word layers), "segment"
(for segment layers) "turn" (for phrase layers), or "transcript" (for span layers).}

\item{annotator.id}{The ID of the layer manager that automatically fills in
annotations on the layer, if any}

\item{annotator.task.parameters}{The configuration the layer manager should use when
filling the layer with annotations. This is a string whose format is specific to
each layer manager.}
}
\value{
The resulting layer definition, with members:
\itemize{
\item \emph{id} The layer's unique ID
\item \emph{parentId} The layer's parent layer ID
\item \emph{description} The description of the layer
\item \emph{alignment} The layer's alignment - 0 for none, 1 for point alignment, 2 for interval alignment
\item \emph{peers} Whether children have peers or not
\item \emph{peersOverlap} Whether child peers can overlap or not
\item \emph{parentIncludes} Whether the parent t-includes the child
\item \emph{saturated} Whether children must temporally fill the entire parent duration (true) or not (false)
\item \emph{parentIncludes} Whether the parent t-includes the child
\item \emph{type} The type for labels on this layer
\item \emph{validLabels} List of valid label values for this layer
}
}
\description{
This function creates a new annotation layer. The layer may be configured with a layer
manager ID and task parameters, for automatic annotation. If so, this function will
create the layer and the automation task, but automatic annotation will not be run by
this function. To generate the automatic annotations, use \link{generateLayer}.
}
\details{
You must have administration privileges in LaBB-CAT in order to be able to use this function.
}
\examples{
\dontrun{
## Upload the CMU Pronouncing Dictionary 
loadLexicon(labbcat.url, "cmudict", " - ", "", ";", "Word - Pron", FALSE, "cmudict.txt")

## Create a layer that tags each token with its CMU Pronouncing Dictionary pronunciation
newLayer(labbcat.url, "pronunciation", "CMU Dict pronunciations encoded in ARPAbet",
         annotator.id="FlatFileDictionary",
         annotator.task.parameters=
             "tokenLayerId=orthography&tagLayerId=phonemes&dictionary=cmudict:Word->Pron")

## Generate the pronunciation tags
generateLayer(labbcat.url, "pronunciation")
}

}
\seealso{
Other Annotation layer functions: 
\code{\link{deleteLayer}()},
\code{\link{generateLayer}()},
\code{\link{getLayer}()},
\code{\link{getLayerIds}()},
\code{\link{getLayers}()},
\code{\link{saveLayer}()}
}
\concept{Annotation layer functions}
\keyword{annotation}
\keyword{layer}
