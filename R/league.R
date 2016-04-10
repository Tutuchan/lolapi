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
  
  api_type <- if (!all(is.null(summoner_id))) {
    paste0("league/by-summoner/", paste(summoner_id, collapse = ",%20"))
  } else paste0("league/by-team/", paste(team_id, collapse = ",%20"))
  
  if (!is.null(entry)) api_type <- paste0(api_type, "/entry")
  
  fetch_data(api_type, NULL)
} 