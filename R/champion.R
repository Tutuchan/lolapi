#' champion data
#' 
#' Wraps the \href{https://developer.riotgames.com/api/methods#!/1077}{champion} api method
#' @export
champion <- function(id = NULL, freeToPlay = NULL){
  api_fetch("champion", id, freeToPlay = freeToPlay)$champions
}