% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/champion_mastery.R
\name{champion_mastery}
\alias{champion_mastery}
\title{champion mastery data}
\usage{
champion_mastery(player_id, champion_id = NULL, type = NULL)
}
\arguments{
\item{player_id}{a numeric}

\item{champion_id}{a numeric}

\item{type}{a character, one of "champions", "score" or "topchampions"}
}
\description{
Wraps the \href{https://developer.riotgames.com/api/methods#!/1071}{champion mastery} api method
}

