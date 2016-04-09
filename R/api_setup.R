#' setup the api
#' 
#' Use this function to set up the usual region and key you want to use.
#' 
#' Get your key at \url{https://developer.riotgames.com/}
#' 
#' @param api_key a character
#' @param region a character
#' @export
api_setup <- function(api_key, region){
  Sys.setenv(LOLAPI_REGION = region)
  Sys.setenv(LOLAPI_KEY = api_key)
}