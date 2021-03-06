% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/match.R
\name{lol_match}
\alias{lol_match}
\alias{match_list}
\title{match data}
\usage{
lol_match(match_id, include_timeline = NULL)

match_list(summoner_id, champion_ids = NULL, ranked_queues = NULL,
  seasons = NULL, begin_time = NULL, end_time = NULL,
  begin_index = NULL, end_index = NULL)
}
\arguments{
\item{match_id}{a numeric}

\item{include_timeline}{a logical}

\item{summoner_id}{a numeric}

\item{champion_ids}{a vector of numerics}

\item{ranked_queues}{a vector of characters}

\item{seasons}{a vector of characters}

\item{begin_time}{a numeric}

\item{end_time}{a numeric}

\item{begin_index}{a numeric}

\item{end_index}{a numeric}
}
\description{
Wraps the \href{https://developer.riotgames.com/api/methods#!/1064}{match} and 
\href{https://developer.riotgames.com/api/methods#!/1069}{match list} api methods
}

