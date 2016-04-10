#' game data
#' 
#' Wraps the \href{https://developer.riotgames.com/api/methods#!/1078}{team} api method
#' 
#' @param summoner_id a numeric
#' 
#' @export

game <- function(summoner_id){
  api_fetch("game/by-summoner", paste0(summoner_id, "/recent"))
} 