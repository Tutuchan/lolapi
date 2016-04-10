#' champion data
#' 
#' Wraps the \href{https://developer.riotgames.com/api/methods#!/1077}{champion} and \href{https://developer.riotgames.com/api/methods#!/1055/3633}{static champion} api method
#' @export
champion <- function(id = NULL, freeToPlay = NULL){
  fetch_data("champion", id, freeToPlay = freeToPlay)$champions
}

#' @rdname champion
#' @export
champion_static <- function(id = NULL, locale = NULL, version = NULL, dataById = NULL, champData = NULL){
  fetch_static_data("champion", id, locale = locale, version = version, dataById = dataById, champData = champData)
}