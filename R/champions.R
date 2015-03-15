#' Functions for champions
#' 
#' Returns some information about each champion :
#' \itemize{
#'   \item id : integer, assigned by Riot Games
#'   \item active: boolean,	indicates if the champion is active.
#'   \item botEnabled: boolean, bot enabled flag (for custom games).
#'   \item botMmEnabled: boolean, bot Match Made enabled flag (for Co-op vs. AI games).
#'   \item freeToPlay: boolean, indicates if the champion is free to play. Free to play champions are rotated periodically.
#'   \item rankedPlayEnabled: boolean, ranked play enabled flag.
#' }
#' 
#' @param region A character, the region where to retrieve the data (irrelevant here).
#' @param apiKey A character, the API key delivered by Riot Games.
#' @return A \code{tbl} (see \code{\link[dplyr]{tbl_df}}) containing some information for each champion (see Description)/
#' 
#' @export
#' @name Champions

GetChampionList <- function(region = myRegion, apiKey = myAPIKey){
  dplyr::tbl_df(jsonlite::fromJSON(paste0("https://", region, mainURL, region, apiVersions$champion, "champion?api_key=", apiKey))$champions)
    
}

#' @rdname Champions
#' @export
GetChampion <- function(championId, region = myRegion, apiKey = myAPIKey){
  jsonlite::fromJSON(paste0("https://", region, mainURL, region, apiVersions$champion, "champion/", championID, "?api_key=", apiKey)) %>%
    as.data.frame
}

