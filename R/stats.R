GetRankedStats <- function(summonerID, region = myRegion, apiKey = myAPIKey){
  FetchData("stats", value = paste("by-summoner", summonerID, "ranked", sep = "/"))
}

GetSummaryStats <- function(summonerID, region = myRegion, apiKey = myAPIKey){
  FetchData("stats", value = paste("by-summoner", summonerID, "summary", sep = "/"))
}