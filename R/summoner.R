#' Summoner class

Summoner <- R6::R6Class("Summoner",
                        public = list(
                          name = NA,
                          id = NA,
                          initialize = function(name = NULL, id = NULL){
                            if (missing(name)&missing(id)) stop("provide either name or id!")
                            if (!missing(name)&(!is.character(name))) stop("name should be a character!")
                            if (!missing(id)&(!is.numeric(id))) stop("id should be a numeric!")
                            
                            if (!missing(name)) value <- paste0("by-name/", name) else value <- id
                            baseData <- as.data.frame(FetchData("summoner", value)[[1]])
                            self$name <- baseData$name
                            self$id <- baseData$id
                          },
                          GetMasteries = function(){
                            res <- FetchData("summoner", paste(self$id, "masteries", sep = "/"))[[1]]
                            res
                          },
                          GetRunes = function(){
                            res <- FetchData("summoner", paste(self$id, "runes", sep = "/"))[[1]]
                            res
                          },
                          GetRankedStats = function(){
                            res <- FetchData("stats", paste(self$id, "ranked", sep = "/"))
                            res
                          },
                          GetGamesStats = function(){
                            res <- FetchData("stats", paste(self$id, "summary", sep = "/"))
                            res
                          }
                          GetMatchHistory <- function(){
                            res <- FetchData("matchhistory", self$id)
                          })
)