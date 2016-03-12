#'Creating a Candidate
#'
#'Creates an object of class Candidate with user-provided inputs
#'
#'@param name A character object of the candidate's name
#'@param delegatesWon A numeric object of the delegates won by the candidate
#'@param party A character object of the candidate's party
#'
#'@return an object of class Candidate containing
#' \item {name} {The candidate's name}
#' \item {delegatesWon} {Number of delegates the candidate has won}
#' \item {party} {The candidate's party}
#' \item {delegatesNeeded} {Number of delegates needed for the candidate's party nomination}
#'@author Matt Malis \email{malis.matt@gmail.com}
#'@note This function creates a Candidate!
#'@examples 
#'
#'cruzCandidate<-createCandidate("Ted Cruz", 135, "Republican")
#'@seealso \code{\link{totalNeeded}} \code{\link{propNeeded}}  
#'@rdname createCandidate
#'@aliases createCandidate,ANY-method 
#'@export
setGeneric(name = "createCandidate",
           def = function(name, delegatesWon, party){
             standardGeneric("createCandidate")
           })
#'@export
setMethod(f = "createCandidate",
          definition = function(name, delegatesWon, party){
            return(new("Candidate", name=name, delegatesWon=delegatesWon,
                       party=party, delegatesNeeded=totalNeeded(party)))
          })

