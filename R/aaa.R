list(
  "activity_streams" = "http://activitystrea.ms/spec/1.0",
  "avatar" = "http://webfinger.net/rel/avatar",
  "hcard" = "http://microformats.org/profile/hcard",
  "open_id" = "http://specs.openid.net/auth/2.0/provider",
  "opensocial" = "http://ns.opensocial.org/2008/opensocial/activitystreams",
  "portable_contacts" = "http://portablecontacts.net/spec/1.0",
  "profile" = "http://webfinger.net/rel/profile-page",
  "webfist" =  "http://webfist.org/spec/rel",
  "xfn" = "http://gmpg.org/xfn/11"
) -> RELS

WEBFINGER_CONTENT_TYPE <- "application/jrd+json"

httr::user_agent(
  sprintf(
    "webfinger R package v%s: (<%s>)",
    utils::packageVersion("webfinger"),
    utils::packageDescription("webfinger")$URL
  )
) -> .WEBFINGER_UA