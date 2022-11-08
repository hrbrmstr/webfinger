#' Discover information about people or other entities on the Internet
#'
#' @param resource to lookup (e.g. `acct:hrbrmstr@rud.is`)
#' @param host if not `NULL` then use this as the webfinger host vs the parsed entry from `resource`
#' @param ... passed on to [httr::GET()]
#'
#' @return list, classed `webfinger`
#' @export
#' @examples
#' webfinger("acct:hrbrmstr@rud.is")
webfinger <- function(resource, host = NULL, ...) {

  if (is.null(host)) {
    host <- tail(unlist(stri_split_fixed(resource, "@")), 1)
  }

  httr::GET(
    url = sprintf("https://%s/.well-known/webfinger", host),
    query = list(
      resource = resource
    ),
    httr::accept(WEBFINGER_CONTENT_TYPE),
    .WEBFINGER_UA,
    ...
  ) -> res

  httr::stop_for_status(res)

  out <- httr::content(res, as = "text")

  out <- jsonlite::fromJSON(out)

  class(out) <- c("webfinger", "list")

  out

}

# @rdname webfinger
# @param x `webfinger` object
# @param ... unused
# @export
# print.webfinger <- function(x, ...) {
#
#   print.default(x)
#
# }