#' team data
#' 
#' Wraps the \href{https://developer.riotgames.com/api/methods#!/986}{team} api method
#' 
#' @param summoner_id a vector of numerics
#' @param team_id a vector of numerics
#' 
#' @export

team <- function(summoner_id = NULL, team_id = NULL){
  if (!is.null(summoner_id) & !is.null(team_id)) stop("specify either summoner ids or team ids!")
  
  res <- list()
  
  if (!all(is.null(summoner_id))) {
    res[[1]] <- "team/by-summoner"
    res[[2]] <- summoner_id
  } else  {
    res[[1]] <- "team"
    res[[2]] <- team_id
  }
  
  api_fetch(res[[1]], res[[2]])
} 