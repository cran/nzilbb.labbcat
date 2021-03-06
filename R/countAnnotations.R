#' Gets the number of annotations on the given layer of the given transcript.
#'
#' Returns the number of annotations on the given layer of the given
#' transcript.
#' 
#' @param labbcat.url URL to the LaBB-CAT instance
#' @param id A transcript ID (i.e. transcript name)
#' @param layerId A layer ID
#' @return The number of annotations on that layer
#' 
#' @seealso
#' \code{\link{getTranscriptIds}}
#' \code{\link{getTranscriptIdsInCorpus}}
#' \code{\link{getTranscriptIdsWithParticipant}}
#' @examples 
#' \dontrun{
#' ## define the LaBB-CAT URL
#' labbcat.url <- "https://labbcat.canterbury.ac.nz/demo/"
#' 
#' ## Count the number of words in UC427_ViktoriaPapp_A_ENG.eaf
#' token.count <- countAnnotations(labbcat.url, "UC427_ViktoriaPapp_A_ENG.eaf", "orthography")
#' }
#' 
#' @keywords transcript
#' 
countAnnotations <- function(labbcat.url, id, layerId) {
    parameters <- list(id=id, layerId=layerId)
    resp <- store.get(labbcat.url, "countAnnotations", parameters)
    if (is.null(resp)) return()
    resp.content <- httr::content(resp, as="text", encoding="UTF-8")
    if (httr::status_code(resp) != 200) { # 200 = OK
        print(paste("ERROR: ", httr::http_status(resp)$message))
        print(resp.content)
        return()
    }
    resp.json <- jsonlite::fromJSON(resp.content)
    for (error in resp.json$errors) print(error)
    return(resp.json$model)
}
