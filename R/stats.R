#' stats data
#' 
#' Wraps the \href{https://developer.riotgames.com/api/methods#!/1080}{stats} api method
#' 
#' \code{season} should be in the \code{SEASONYYYY} format, starting from 2014. Data is available for the
#' 2013 season with \code{SEASON3}.
#' 
#' @param summoner_id a numeric
#' @param type a character, either 'ranked' or 'summary'
#' @param season a character
#' 
#' @export

stats <- function(summoner_id, type = c("ranked", "summary"), season = NULL){
  api_type <- "stats/by-summoner"
  
  api_value <- paste(summoner_id, type, sep = "/")
  
  api_fetch(api_type, api_value, season = season)
} 