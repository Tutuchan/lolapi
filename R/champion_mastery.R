#' champion mastery data
#' 
#' Wraps the \href{https://developer.riotgames.com/api/methods#!/1071}{champion mastery} api method
#' 
#' @param player_id a numeric
#' @param champion_id a numeric
#' @param type a character, one of "champions", "score" or "topchampions"
#' 
#' @export
champion_mastery <- function(player_id, champion_id = NULL, type = NULL){
  if (is.null(champion_id) & is.null(type)) stop("specify either a champion id or a type")
  
  api_type <- player_id
  api_value <- if (!is.null(champion_id)) paste0("champion/", champion_id) else type
  
  api_fetch_mastery(api_type, api_value)
}