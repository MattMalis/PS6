
## Load libraries and set working directory

library(devtools)
library(roxygen2)
setwd("/Users/iramalis/Desktop/gitstuff/PS6") #This will need to be changed to match your directory

rm(list=ls())

devtools::create("candPack")

## This is run once when the package strcuture is first created


## At this point put the *.R files into the correcto directories and edit the DESCRIPTION file



rm(list=ls())
## This can be run many times as the code is updates
current.code <- as.package("candPack")
load_all(current.code)
document(current.code)


## Testing out the functions and help files
?totalNeeded
totalNeeded("Republican")
totalNeeded("Democrat")
totalNeeded("dem")
totalNeeded("GOP")
totalNeeded("Donald Trump")

?createCandidate
createCandidate
clinton<-createCandidate("Hillary Clinton", 4400, "Democrat")
clinton
print(clinton)

propNeeded(clinton, 500)
propNeeded("Bernie", 103)

getMethod(propNeeded)
propNeeded()
?propNeeded




