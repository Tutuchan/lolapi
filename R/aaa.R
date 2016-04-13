# Constants
main_url <- ".api.pvp.net/api/lol"

static_url <- "global.api.pvp.net/api/lol/static-data"

mastery_url <- ".api.pvp.net/championmastery/location"

regions <- c("br", "eune", "euw", "kr", "lan", "las", "na", "oce", "ru", "tr")

platforms <- c("br1", "eun1", "euw1", "kr", "la1", "la2", "na1", "oce1", "ru", "tr1")

api_versions <- data.frame(champion = "v1.2",
                           currentgame = "v1.0",
                           featuredgames = "v1.0",
                           game = "v1.3",
                           league = "v2.5",
                           static = "v1.2",
                           status = "v1.0",
                           match = "v2.2",
                           matchlist = "v2.2",
                           stats = "v1.3",
                           summoner = "v1.4",
                           team = "v2.4",
                           stringsAsFactors = FALSE,
                           check.names = FALSE)

# Base functions

create_url <- function(region, api_type, api_value){
  base_type <- strsplit(api_type, "/")[[1]][1]
  
  if (is.null(api_value)){
    paste("https:/", paste0(region, main_url), region, as.character(api_versions[base_type]), api_type, sep = "/")
  } else {
    paste("https:/", paste0(region, main_url), region, as.character(api_versions[base_type]), api_type, paste(api_value, collapse = ",%20"), sep = "/")
  }
}

create_static_url <- function(region, api_type, api_value){
  if (is.null(api_value)){
    paste("https:/", static_url, region, as.character(api_versions["static"]), api_type, sep = "/")
  } else {
    paste("https:/", static_url, region, as.character(api_versions["static"]), api_type, api_value, sep = "/")
  }
}

create_mastery_url <- function(region, api_type, api_value){
  platform <- platforms[which(regions == region)]
  paste("https:/", paste0(region, mastery_url), platform, "player", api_type, api_value, sep = "/")
}

add_api_key <- function(str, api_key){
  paste0(str, "?api_key=", api_key)
}

add_additional_parameters <- function(str,  ...){
  dots = list(...)
  dots <- dots[!sapply(dots, is.null)]
  dots <- lapply(dots, function(x) paste(x, collapse = ","))
  if (length(dots) > 0) paste0(str, "&", paste(names(dots), unlist(dots), sep = "=", collapse = "&")) else str
}

api_fetch <- function(api_type, api_value = NULL, ..., region = Sys.getenv("LOLAPI_REGION"), api_key = Sys.getenv("LOLAPI_KEY"), api_function = create_url) {
  res <- api_function(region, api_type, api_value) %>% 
    add_api_key(api_key) %>% 
    add_additional_parameters(...)
  res %>% 
    jsonlite::fromJSON(simplifyVector =  FALSE)
}

api_fetch_static <- function(api_type, api_value = NULL, ..., region = Sys.getenv("LOLAPI_REGION"), api_key = Sys.getenv("LOLAPI_KEY")) {
  api_fetch(api_type, api_value = api_value, ..., region = region, api_key = api_key, api_function = create_static_url)
}

api_fetch_mastery <- function(api_type, api_value, ..., region = Sys.getenv("LOLAPI_REGION"), api_key = Sys.getenv("LOLAPI_KEY")) {
  api_fetch(api_type, api_value = api_value, ..., region = region, api_key = api_key, api_function = create_mastery_url)
}

