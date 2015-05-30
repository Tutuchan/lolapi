GetRecentGames <- function(summonerID, region = myRegion, apiKey = myAPIKey){
  FetchData("game", value = paste("by-summoner", summonerID, "recent", sep = "/"))
}

GetMatch <- function(matchID, region = myRegion, apiKey = myAPIKey){
  FetchData("match", value = paste0(matchID, "?includeTimeline=TRUE"), symbol = "&")
}