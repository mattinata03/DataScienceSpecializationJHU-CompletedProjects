rankall <- function(outcome, num = "best") {
        ## Read outcome data
        allOutcomeData <- read.csv("outcome-of-care-measures.csv", 
                                   na.strings = "Not Available", 
                                   stringsAsFactors = FALSE)
        hospitalNameColumn <- 2
        stateColumn <- 7
        ## Check that outcome is valid
        validOutcome <- c("heart attack"=11, "heart failure"=17, 
                          "pneumonia" = 23)
        if(!(outcome %in% names(validOutcome))) {
                stop("invalid outcome")
        }

        #subset data by outcome and only the columns needed
        subOutcomeData <- allOutcomeData[, c(hospitalNameColumn,
                                        stateColumn,validOutcome[outcome])]
                
        #rename output columns
        names(subOutcomeData) <- c("hospital", "state", "rate")
        
        #omitting the NA data
        subOutcomeData <- subOutcomeData[complete.cases(subOutcomeData),]
        
        #sort final data
        finalOutcomeData <- subOutcomeData[order(subOutcomeData[, "state"],
                                                 subOutcomeData[, "rate"],
                                                 subOutcomeData[, "hospital"]),]
        
        ddply(finalOutcomeData, .(state), function(x){
                if(num == "best"){
                        num <- 1 
                } else if (num == "worst"){
                        num <- nrow(x)
                }
                rankedOutcome <- x[num,]
        })
        
        
        #rankedByState <- split(finalOutcomeData, finalOutcomeData$state)
        
        #rankedHospByState <- sapply(rankedByState, function(x){x[,c("hospital",
        #                                                            "state")]})
        
        #resultHosp <- data.frame()
        
        #for(i in 1:length(rankedHospByState)){
               
        #        resultHosp <- rbind(resultHosp, c(rankedHospByState[[i]][[num]])
        #}
        #resultHosp <- rankedHospByState[[5]][[num]]
}
