% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/playlists.R
\name{get_playlist}
\alias{get_playlist}
\title{Get User Playlist}
\usage{
get_playlist(
  playlist_id,
  fields = NULL,
  market = NULL,
  authorization = get_spotify_access_token()
)
}
\arguments{
\item{playlist_id}{Required. The \href{https://developer.spotify.com/documentation/web-api/#spotify-uris-and-ids}{Spotify ID} for the playlist.}

\item{fields}{Optional.
Filters for the query: a comma-separated list of the fields to return.
If omitted, all fields are returned. For example, to get just the playlist’s description
and URI: \cr
\code{fields = c("description", "uri")} \cr A dot separator can be used to specify non-reoccurring fields, while parentheses can be used to specify reoccurring fields within objects. For example, to get just the added date and user ID of the adder: \cr
\code{fields = "tracks.items(added_at,added_by.id)"} \cr Use multiple parentheses to drill down into nested objects, for example: \cr
\code{fields = "tracks.items(track(name,href,album(name,href)))"} \cr Fields can be excluded by prefixing them with an exclamation mark, for example: \cr
\code{fields = "tracks.items(track(name,href,album(!name,href)))"}}

\item{market}{Optional. \cr
An ISO 3166-1 alpha-2 country code or the string \code{"from_token"}.
Provide this parameter if you want to apply \href{https://developer.spotify.com/documentation/general/guides/track-relinking-guide/}{Track Relinking}}

\item{authorization}{Required. A valid access token from the Spotify Accounts service.
See the \href{https://developer.spotify.com/documentation/general/guides/authorization-guide/}{Web API authorization guide} for more details. Both Public and Private playlists belonging to any user are retrievable on provision of a valid access token. Defaults to \code{spotifyR::get_spotify_access_token()}}
}
\value{
Returns a list containing the data about the playlist.
See \url{https://developer.spotify.com/console/get-playlist/} for more information.
}
\description{
Get a playlist owned by a Spotify user.
}
\seealso{
Other playlist functions: 
\code{\link{add_tracks_to_playlist}()},
\code{\link{change_playlist_details}()},
\code{\link{check_users_following}()},
\code{\link{create_playlist}()},
\code{\link{get_my_playlists}()},
\code{\link{get_user_playlists}()},
\code{\link{remove_tracks_from_playlist}()},
\code{\link{tidy}()}
}
\concept{playlist functions}
