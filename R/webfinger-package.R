#' Discover information about people or other entities on the Internet
#'
#' WebFinger is used to discover information about people or other
#' entities on the Internet that are identified by a URI using
#' standard Hypertext Transfer Protocol (HTTP) methods over a secure
#' transport. A WebFinger resource returns a JavaScript Object
#' Notation (JSON) object describing the entity that is queried.
#' The JSON object is referred to as the JSON Resource Descriptor (JRD).
#'
#' For a person, the type of information that might be discoverable via
#' WebFinger includes a personal profile address, identity service,
#' telephone number, or preferred avatar. For other entities on the
#' Internet, a WebFinger resource might return JRDs containing link
#' relations that enable a client to discover, for example, that a
#' printer can print in color on A4 paper, the physical location of a
#' server, or other static information.
#'
#' Information returned via WebFinger might be for direct human
#' consumption (e.g., looking up someone's phone number), or it might be
#' used by systems to help carry out some operation (e.g., facilitating,
#' with additional security mechanisms, logging into a web site by
#' determining a user's identity service). The information is intended
#' to be static in nature, and, as such, WebFinger is not intended to be
#' used to return dynamic information like the temperature of a CPU or
#' the current toner level in a laser printer.
#'
#' The WebFinger protocol is designed to be used across many
#' applications. Applications that wish to utilize WebFinger will need
#' to specify properties, titles, and link relation types that are
#' appropriate for the application. Further, applications will need to
#' define the appropriate URI scheme to utilize for the query target.
#'
#' @md
#' @name webfinger
#' @keywords internal
#' @author Bob Rudis (bob@@rud.is)
#' @import httr stringi
#' @importFrom jsonlite fromJSON
"_PACKAGE"
