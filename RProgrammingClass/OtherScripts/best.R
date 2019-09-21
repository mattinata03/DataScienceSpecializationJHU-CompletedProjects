best <- function(state, outcome) {
        ## Read outcome data
        allOutcomeData <- read.csv("outcome-of-care-measures.csv", 
                                   na.strings = "Not Available", 
                                   stringsAsFactors = FALSE)
        hospitalNameColumn <- 2
        stateColumn <- 7
        ## Check that state and outcome are valid
        validOutcome <- c("heart attack"=11, "heart failure"=17, 
                          "pneumonia" = 23)
        if(!(outcome %in% names(validOutcome))) {
                stop("invalid outcome")
        }
        if(!(state %in% state.abb)) {
                stop("invalid state")
        }        
        #subset outcome data by state
        stateData <- subset(allOutcomeData, State == state)
        
        #subset state data by outcome and only the columns needed
        subOutcomeData <- stateData[, c(hospitalNameColumn,
                                        stateColumn,validOutcome[outcome])]
        
        #remane output columns
        names(subOutcomeData) <- c("hospital", "state", "outcome")
        #sort outcome data, omitting the NA data
        subOutcomeData <- subOutcomeData[complete.cases(subOutcomeData),]
        
        finalOutcomeData <- subOutcomeData[order(subOutcomeData[, "outcome"],
                                                 subOutcomeData[, "hospital"]),]
        finalOutcomeData[1,"hospital"]
}
