% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/library.R
\name{get_my_saved_tracks}
\alias{get_my_saved_tracks}
\title{Get User's Saved Tracks}
\usage{
get_my_saved_tracks(
  limit = 20,
  offset = 0,
  market = NULL,
  authorization = get_spotify_authorization_code(),
  include_meta_info = FALSE
)
}
\arguments{
\item{limit}{Optional. \cr
Maximum number of tracks to return. \cr
Default: 20 \cr
Minimum: 1 \cr
Maximum: 50 \cr}

\item{offset}{Optional. \cr
The index of the first track to return. \cr
Default: 0 (the first object). Maximum offset: 100,000. Use with \code{limit} to get the next set of tracks.}

\item{market}{Optional. \cr
An \href{https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2}{ISO 3166-1 alpha-2 country code} or the string \code{"from_token"}. Provide this parameter if you want to apply \href{https://developer.spotify.com/documentation/general/guides/track-relinking-guide/}{Track Relinking}}

\item{authorization}{Required. A valid access token from the Spotify Accounts service.
See the \href{https://developer.spotify.com/documentation/general/guides/authorization-guide/}{Web API authorization Guide} for more details. Defaults to \code{spotifyR::get_spotify_authorization_code()}. The access token must have been issued on behalf of the current user.}

\item{include_meta_info}{Optional. Boolean indicating whether to include full result,
with meta information such as \code{"total"}, and \code{"limit"}. Defaults to \code{FALSE}.}
}
\value{
Returns a data frame of results containing user profile information.
See \url{https://developer.spotify.com/documentation/web-api/reference/users-profile/get-current-users-profile/} for more information.
}
\description{
Get a list of the songs saved in the current Spotify user’s ‘Your Music’ library.
}
