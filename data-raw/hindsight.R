## code to prepare `hindsight` dataset goes here
library(readr)
library(dplyr)
hind <- read_csv("data-raw/jurors_data.csv")


## Process data to include primary dvs and to recode condition factor

hindsight <- hind |>
    rename(confidence = confidence_1) |>
    mutate(timing = as.factor(outcome),
           prob_guilt = 100 - prob_nothing,
           rdifficultpredict = ifelse((difficultpredict),
                                      as.numeric(recode_factor((difficultpredict), `1` = 5, `2` = 4, `3` = 3, `4` = 2, `5` = 1)),
                                      ifelse(difficultpredict == 1, 5,
                                             ifelse(difficultpredict == 2, 4,
                                                    ifelse(difficultpredict == 3, 3,
                                                           ifelse(difficultpredict == 4, 2,
                                                                  ifelse(difficultpredict == 5, 1, NA)))))
           ),
           foreseeability = (knowitallalong + rdifficultpredict + clearvivid + foreseeable) / 4,
           decisioneval = (cleardecision + fairdecision + otherdecision + responsibledecision + overalldecision) / 5
           ,
           relevance = (relevant_1 + relevant_2 + relevant_3 + relevant_4 + relevant_5)
           )


usethis::use_data(hindsight, overwrite = TRUE)
