#' summoner data
#' 
#' Wraps the \href{https://developer.riotgames.com/api/methods#!/1079}{summoner} api method
#' 
#' @param name a vector of names
#' @param id a vector of numerics
#' 
#' @export
summoner <- function(name = NULL, id = NULL, type = NULL){
  if (!is.null(name) & !is.null(id)) stop("specify either names or ids!")
  if (!is.null(type)) if (!type %in% c("runes", "masteries", "name")) stop("type must be one of 'runes', 'masteries' or 'name'")
  
  api_type <- if (!is.null(name)) {
    paste0("summoner/by-name/", paste(name, collapse = ",%20"))
  } else {
    res <- paste0("summoner/", paste(id, collapse = ",%20"))
    if (!is.null(type)) res <- paste0(res, "/", type)
    res
  }
  
  api_fetch(api_type, NULL)
}
