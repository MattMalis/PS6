getwd()
setwd("/Users/iramalis/Desktop/gitstuff/PS6")

#'A Candidate object
#'
#'Some more info on objects of the class \code{Candidate}, if you'd like
#'
#'\itemize{
#'\item \code{name} The candidate's name
#'\item \code{delegatesWon} Number of delegates the candidate has won to date
#'\item \code{party} Candidate's party
#'\item \code{delegatesNeeded} Number of delegates needed to secure party nomination
#'}
#'
#'@author Matt Malis: \email{malis.matt@gmail.com}
#'@aliases 
#'@rdname Candidate
#'@export
#'

setClass(Class = "Candidate", representation = representation(
  name = "character",
  delegatesWon = "numeric",
  party = "character",
  delegatesNeeded = "numeric"),
  protoype = prototype(
    name = c(),
    delegatesWon = c(),
    party = c(),
    delegatesNeeded = c()
  ))


#' @export
setMethod("initialize", "Candidate", 
          function(.Object, ...){
            value=callNextMethod()
            return(value)
          }
) 
