CreateURL <- function(region, type, value, baseURL){
  if (region != "global "){
    return(paste("https:/", paste0(region, baseURL), region, as.character(apiVersions[type]), type, value, sep = "/"))
  } else {
    return(paste("https:/", paste0(region, baseURL), "static-data", region, as.character(apiVersions[type]), type, value, sep = "/"))
  }
  
}

AddAPIKey <- function(str, apiKey, symbol){
  paste0(str, symbol, "api_key=", apiKey)
}

FetchData <- function(type, value, region = myRegion, apiKey = myAPIKey, baseURL = mainURL, symbol = "?"){
  res <- jsonlite::fromJSON(CreateURL(region, type, value, baseURL) %>% AddAPIKey(apiKey, symbol))
  if (length(res) == 1) res <- unname(res)
  res
}