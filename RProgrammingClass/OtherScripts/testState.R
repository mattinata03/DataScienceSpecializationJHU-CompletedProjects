extractState <- function(x) {
        if(x %in% state.abb) {
                print("yes")
        } else {
        print("no")
        }
}

testOutcome <- function(y) {
        validOutcome <- c("heart attack"=11, "heart failure"=17, 
                          "pneumonia" = 23)
        if(y %in% names(validOutcome)) {
                validOutcome[y]
        } else {
        print("no")
        }
}

extractData <- function(state) {
        outcomeData <- read.csv("outcome-of-care-measures.csv")
        if(state %in% state.abb) {
                stateData <- outcomeData[outcomeData$State == state,]
        } else {
        print("no")
        }
}
