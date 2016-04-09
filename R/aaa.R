create_url <- function(region, api_type, api_value = NULL){
  if (is.null(api_value)){
    paste("https:/", paste0(region, mainURL), region, as.character(apiVersions[api_type]), api_type, sep = "/")
  } else {
    paste("https:/", paste0(region, mainURL), region, as.character(apiVersions[api_type]), api_type, api_value, sep = "/")
  }
}

create_static_url <- function(region, api_type, api_value = NULL){
  if (is.null(api_value)){
    paste("https:/", staticURL, region, as.character(apiVersions[api_type]), api_type, sep = "/")
  } else {
    paste("https:/", staticURL, region, as.character(apiVersions[api_type]), api_type, api_value, sep = "/")
  }
}

add_api_key <- function(str, api_key){
  paste0(str, "?api_key=", api_key)
}

add_additional_parameters <- function(str,  ...){
  dots = list(...)
  paste0(str, "&", paste(names(dots), unlist(dots), sep = "=", collapse = "&"))
}

fetch_data <- function(api_type, api_value, ..., region = Sys.getenv("LOLAPI_REGION"), api_key = Sys.getenv("LOLAPI_KEY")){
  res <- create_url(region, api_type, api_value) %>% 
    add_api_key(api_key) %>% 
    add_additional_parameters(...)
  print(res)
  res %>% 
    jsonlite::fromJSON()
}