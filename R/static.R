#' static data
#' 
#' Wraps the \href{https://developer.riotgames.com/api/methods#!/1055}{static-data} api method
#' 
#' @param id a numeric, depends on the method call, can be a champion, item, mastery, rune or summoner spell id 
#' @param locale a character
#' @param version a character
#' @param data_by_id a logical
#' @name static
NULL

#' @rdname static
#' @param champ_data a vector of characters
#' @export
champion_static <- function(id = NULL, locale = NULL, version = NULL, data_by_id = NULL, champ_data = NULL){
  api_fetch_static("champion", id, locale = locale, version = version, dataById = data_by_id, champData = champ_data)
}

#' @rdname static
#' @param item_data a vector of characters
#' @export
item_static <- function(id = NULL, locale = NULL, version = NULL, item_data = NULL){
  if (!is.null(id)) api_fetch_static("item", id, locale = locale, version = version, itemData = item_data) else {
    api_fetch_static("item", id, locale = locale, version = version, itemListData = item_data)
  }
}

#' @rdname static
#' @export
language_strings_static <- function(locale = NULL, version = NULL){
  api_fetch("language-strings", locale = locale, version = version)
}

#' @rdname static
#' @export
languages_static <- function(){
  api_fetch_static("languages")
}

#' @rdname static
#' @export
map_static <- function(locale = NULL, version = NULL){
  api_fetch_static("map", locale = locale, version = version)
}

#' @rdname static
#' @param mastery_data a vector of characters
#' @export
mastery_static <- function(id = NULL, locale = NULL, version = NULL, mastery_data = NULL){
  if (!is.null(id)) api_fetch_static("mastery", id, locale = locale, version = version, masteryData = mastery_data) else {
    api_fetch_static("mastery", id, locale = locale, version = version, masteryListData = mastery_data)  }
}

#' @rdname static
#' @export
realm_static <- function(){
  api_fetch_static("realm")
}

#' @rdname static
#' @param rune_data a vector of characters
#' @export
rune_static <- function(id = NULL, locale = NULL, version = NULL, rune_data = NULL){
  if (!is.null(id)) api_fetch_static("rune", id, locale = locale, version = version, runeData = rune_data) else {
    api_fetch_static("rune", id, locale = locale, version = version, runeListData = rune_data)  }
}

#' @rdname static
#' @param spell_data a vector of characters
#' @export
summoner_spell_static <- function(id = NULL, locale = NULL, version = NULL, spell_data = NULL){
  api_fetch_static("summoner-spell", id, locale = locale, version = version, spellData = spell_data)
}

#' @rdname static
#' @export
versions_static <- function(){
  api_fetch_static("versions")
}