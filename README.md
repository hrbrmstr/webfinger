
[![Project Status: Active – The project has reached a stable, usable
state and is being actively
developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
![Signed commit
%](https://img.shields.io/badge/Signed_Commits-100%25-lightgrey.svg)

![Minimal R
Version](https://img.shields.io/badge/R%3E%3D-4.0.0-blue.svg)
![License](https://img.shields.io/badge/License-MIT-blue.svg)

# webfinger

Discover Information About People or Other Entities on the Internet

## Description

A good description goes here otherwise CRAN checks fail.

## WIP

Definitely a WIP (drop some code for some credit!), and *p(sherlocked)*
\~= `0.7` but it’s been a while since I made a public R package.

## What’s Inside The Tin

The following functions are implemented:

## Installation

``` r
remotes::install_github("hrbrmstr/webfinger")
```

NOTE: To use the ‘remotes’ install options you will need to have the
[{remotes} package](https://github.com/r-lib/remotes) installed.

## Usage

``` r
library(webfinger)

# current version
packageVersion("webfinger")
## [1] '0.1.0'
```

Basic `acct` usage:

``` r
webfinger("acct:hrbrmstr@rud.is")
## $subject
## [1] "hrbrmstr@rud.is"
## 
## $aliases
## [1] "https://rud.is/b/author/hrbrmstr/"       "https://mastodon.social/@hrbrmstr"      
## [3] "https://mastodon.social/users/hrbrmstr"  "https://infosec.exchange/@hrbrmstr"     
## [5] "https://infosec.exchange/users/hrbrmstr"
## 
## $links
##                                     rel                      type                              href
## 1                                  self application/activity+json https://rud.is/b/author/hrbrmstr/
## 2 http://webfinger.net/rel/profile-page                 text/html https://rud.is/b/author/hrbrmstr/
## 
## attr(,"class")
## [1] "webfinger" "list"
```

``` r
webfinger("acct:hrbrmstr@infosec.exchange")
## $subject
## [1] "acct:hrbrmstr@infosec.exchange"
## 
## $aliases
## [1] "https://infosec.exchange/@hrbrmstr"      "https://infosec.exchange/users/hrbrmstr"
## 
## $links
##                                       rel                      type                                    href
## 1   http://webfinger.net/rel/profile-page                 text/html      https://infosec.exchange/@hrbrmstr
## 2                                    self application/activity+json https://infosec.exchange/users/hrbrmstr
## 3 http://ostatus.org/schema/1.0/subscribe                      <NA>                                    <NA>
##                                                   template
## 1                                                     <NA>
## 2                                                     <NA>
## 3 https://infosec.exchange/authorize_interaction?uri={uri}
## 
## attr(,"class")
## [1] "webfinger" "list"
```

Some endpoints are friendlier than others (but you should generally
prepend `acct:` to be safe):

``` r
webfinger("hrbrmstr@mastodon.social")
## $subject
## [1] "acct:hrbrmstr@mastodon.social"
## 
## $aliases
## [1] "https://mastodon.social/@hrbrmstr"      "https://mastodon.social/users/hrbrmstr"
## 
## $links
##                                       rel                      type                                   href
## 1   http://webfinger.net/rel/profile-page                 text/html      https://mastodon.social/@hrbrmstr
## 2                                    self application/activity+json https://mastodon.social/users/hrbrmstr
## 3 http://ostatus.org/schema/1.0/subscribe                      <NA>                                   <NA>
##                                                  template
## 1                                                    <NA>
## 2                                                    <NA>
## 3 https://mastodon.social/authorize_interaction?uri={uri}
## 
## attr(,"class")
## [1] "webfinger" "list"
```

And, there exists ‘proxy’ webfinger services like this one for the bird
site:

``` r
wf("acct:hrbrmstr@twitter.com", host = "twitter-webfinger.appspot.com")
## $subject
## [1] "hrbrmstr@twitter.com"
## 
## $links
##                           rel                                                                          href
## 1 http://webfist.org/spec/rel https://twitter-webfinger.appspot.com/user.json?uri=acct:hrbrmstr@twitter.com
## 
## attr(,"class")
## [1] "webfinger" "list"
```

## webfinger Metrics

| Lang | \# Files | (%) | LoC |  (%) | Blank lines |  (%) | \# Lines |  (%) |
|:-----|---------:|----:|----:|-----:|------------:|-----:|---------:|-----:|
| R    |        4 | 0.4 |  43 | 0.39 |          14 | 0.19 |       60 | 0.31 |
| Rmd  |        1 | 0.1 |  12 | 0.11 |          22 | 0.31 |       38 | 0.19 |
| SUM  |        5 | 0.5 |  55 | 0.50 |          36 | 0.50 |       98 | 0.50 |

clock Package Metrics for webfinger
