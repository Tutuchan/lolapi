#' match data
#' 
#' Wraps the \href{https://developer.riotgames.com/api/methods#!/1064}{match} and 
#' \href{https://developer.riotgames.com/api/methods#!/1069}{match list} api methods
#' 
#' @param match_id a numeric
#' @param include_timeline a logical
#' 
#' @export

match <- function(match_id, include_timeline = NULL){
  api_fetch("match", match_id, include_timeline = include_timeline)
} 

#' @param summoner_id a numeric
#' @param champion_ids a vector of numerics
#' @param ranked_queues a vector of characters
#' @param seasons a vector of characters
#' @param begin_time a numeric
#' @param end_time a numeric
#' @param begin_index a numeric
#' @param end_index a numeric
#' 
#' @rdname match
#' @export
match_list <- function(summoner_id, champion_ids = NULL, ranked_queues = NULL, seasons = NULL, 
                       begin_time = NULL, end_time = NULL, begin_index = NULL, end_index = NULL){
  api_fetch("matchlist/by-summoner", summoner_id, championIds = champion_ids, 
             rankedQueues = ranked_queues, seasons = seasons, beginTime = begin_time, 
             endTime = end_time, beginIndex = begin_index, endIndex = end_index)
} 