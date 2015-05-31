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
  switch(type,
         stats = value <- paste0("by-summoner/", value))
  res <- jsonlite::fromJSON(CreateURL(region, type, value, baseURL) %>% AddAPIKey(apiKey, symbol))
  res
}