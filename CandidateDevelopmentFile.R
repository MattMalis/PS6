
## Load libraries and set working directory

library(devtools)
library(roxygen2)
setwd("/Users/iramalis/Desktop/gitstuff/PS6") #This will need to be changed to match your directory

rm(list=ls())


## This is run once when the package strcuture is first created


## At this point put the *.R files into the correcto directories and edit the DESCRIPTION file

## Let's look through the R directory in this order:

# squaresPack-package.r
# Squares.R
# addSquares.R
# subtractSquares.R
# AllSquares-class.R
# allSquares.R

# Now the NAMESPACE

rm(list=ls())
## This can be run many times as the code is updates
current.code <- as.package("candPack")
load_all(current.code)
document(current.code)

## Let's look at a function
totalNeeded("Republican")
totalNeeded("Democrat")
totalNeeded("Donald Trump")
?createCandidate
createCandidate
clinton<-createCandidate("Hillary Clinton", 4400, "Democrat")
propNeeded(clinton, 3000)
propNeeded("Bernie", 103)

getMethod(propNeeded)
propNeeded()





