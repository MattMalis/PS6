#'Calculating proportion of delegates needed
#'
#'Calculates proportion of remaining delegates needed to secure nomination
#'
#'@param candidate An object of class Candidate
#'@param delegatesRemaining A numeric object of the number of delegates remaining
#'
#'@return A numeric object of the proportion of remaining delegates needed
#'@author Matt Malis \email{malis.matt@gmail.com}
#'@note Don't have much else to say about this one
#'@examples
#'
#'propNeeded('Hillary Clinton', 2500)
#'@seealso \code{\link{createCandidate}}
#'@rdname propNeeded
#'@aliases propNeeded,ANY-method
#'@export
setGeneric(name = "propNeeded",
           def = function(candidate, delegatesRemaining){
             standardGeneric("propNeeded")
           })
  
#'@export
setMethod(f = "propNeeded",
          definition = function(candidate = 'Candidate', delegatesRemaining = 'numeric') {
            proportion<-(candidate@delegatesNeeded - candidate@delegatesWon)/delegatesRemaining
            ifelse(proportion<=0, "Candidate already secured nomination",
                   ifelse(proportion>1, "Candidate cannot secure nomination",
                           return(proportion)))
          })
