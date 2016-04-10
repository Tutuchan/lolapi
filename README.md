# lolapi

An implementation of the Riot Games [League of Legends API](https://developer.riotgames.com/).

Most functions need an API key that you can obtain from the website if your LoL account is higher 
than level 5.

## Installation

```r
install_github("tutuchan/lolapi")
```

## Setup

```r
api_setup(api_key = "your-key", region = "your-region")
```

You can even put this in your .Rprofile for your project so you don't have to type it every time.

## Features 

+ all methods of the API are wrapped, except for `current-game` and `featured-games`,
+ the R functions return the raw output from the API,
+ documentation is pretty rough right now but it can be found on Riot's website

## Upcoming features

+ possibility to clean the raw output,
+ addition of the lolesports api, see [here](https://gist.github.com/tim-mcgee/272ad266d3dda70f06ff)
