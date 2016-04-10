main_url <- ".api.pvp.net/api/lol"

static_url <- "global.api.pvp.net/api/lol/static-data"

regions <- c("br", "eune", "euw", "kr", "lan", "las", "na", "oce", "tr", "ru", "pbe", "global")

api_versions <- data.frame(champion = "v1.2",
                          currentgame = "v1.0",
                          featuredgames = "v1.0",
                          game = "v1.3",
                          league = "v2.5",
                          static.data = "v1.2",
                          status = "v1.0",
                          match = "v2.2",
                          matchhistory = "v2.2",
                          stats = "v1.3",
                          summoner = "v1.4",
                          team = "v2.4",
                          stringsAsFactors = FALSE)
