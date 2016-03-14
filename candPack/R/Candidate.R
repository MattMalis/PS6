#' A Candidate object
#'
#' Some more info on objects of the class \code{Candidate}, if you'd like
#'
#' An object of the class 'Candidate' has the following slots:
#' \itemize{
#' \item \code{name} The candidate's name
#' \item \code{delegatesWon} Number of delegates the candidate has won to date
#' \item \code{party} Candidate's party
#' \item \code{delegatesNeeded} Number of delegates needed to secure party nomination
#' }
#'
#' @author Matt Malis: \email{malis.matt@gmail.com}
#' @aliases 
#' @rdname Candidate
#' @export
#'

setClass(Class = "Candidate", representation = representation(
  name = "character",
  delegatesWon = "numeric",
  party = "character",
  delegatesNeeded = "numeric"),
  prototype = prototype(
    name = c(),
    delegatesWon = c(),
    party = c(),
    delegatesNeeded = c()
  ))


#' @export
setMethod("initialize", "Candidate", 
          function(.Object, name, delegatesWon, party){
            .Object@name<-name
            .Object@delegatesWon<-delegatesWon
            .Object@party<-party
            .Object@delegatesNeeded<-totalNeeded(party)
            return(.Object)
          }
) 

#' @export
setMethod(f = "show", signature = "Candidate", 
          definition = function(object){
            cand.df<-data.frame(object@name, object@delegatesWon, object@party, object@delegatesNeeded)
            names(cand.df)<-c("Name", "Delegates Won", "Party", "Delegates Needed")
            print(cand.df)
          })

#' @export
print.Candidate<-function(candidate){
  writeLines(paste("Candidate's name: ", candidate@name, 
                  "\nDelegates won: ", candidate@delegatesWon,
                  "\nParty: ", candidate@party,
                  "\nDelegates Needed: ", candidate@delegatesNeeded))
}



