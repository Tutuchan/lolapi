#' league data
#' 
#' Wraps the \href{https://developer.riotgames.com/api/methods#!/985}{league} api method
#' 
#' @param summoner_id a vector of numerics
#' @param team_id a vector of numerics
#' @param entry a logical
#' 
#' @export

league <- function(summoner_id = NULL, team_id = NULL, entry = NULL){
   if (!is.null(summoner_id) & !is.null(team_id)) stop("specify either summoner ids or team ids!")
  
  if (!all(is.null(summoner_id))) {
    api_type <- "league/by-summoner"
    api_value <- summoner_id
  } else  {
    api_type <- "league/by-team"
    api_value <- team_id
  }
  
  if (!is.null(entry)) api_value <- paste0(paste(api_value, collapse = ","), "/entry")
  
  api_fetch(api_type, api_value)
} 