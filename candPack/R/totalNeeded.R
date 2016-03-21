#'Calculating delegates needed
#'
#'Calculates total delegates needed to secure the candidate's party nomination
#'
#'@param party A character object of the candidate's party
#'
#'@return A numeric object of the number of delegates needed
#'@author Matt Malis \email{malis.matt@gmail.com}
#'@note This function is called in the createCandidate function
#'@examples
#'
#'totalNeeded("Democrat")
#'@seealso \code{\link{createCandidate}}
#'@rdname totalNeeded
#'@aliases totalNeeded,ANY-method
#'@export
setGeneric(name = "totalNeeded", 
           def = function(party)
           {standardGeneric("totalNeeded")})


#'@export
setMethod(f="totalNeeded",
           definition = function(party){
             ifelse(party %in% c("Democrat","democrat", "Dem", "dem"), return (4765), 
                    ifelse(party %in% c("Republican", "republican", "Rep", "rep", "GOP"), return (2472), return(NA)))
           }
           )


