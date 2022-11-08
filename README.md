
[![Project Status: Active – The project has reached a stable, usable
state and is being actively
developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
[![Signed
by](https://img.shields.io/badge/Keybase-Verified-brightgreen.svg)](https://keybase.io/hrbrmstr)
![Signed commit
%](https://img.shields.io/badge/Signed_Commits-0%25-lightgrey.svg)
[![Linux build
Status](https://travis-ci.org/hrbrmstr/webfinger.svg?branch=master)](https://travis-ci.org/hrbrmstr/webfinger)
[![Coverage
Status](https://codecov.io/gh/hrbrmstr/webfinger/branch/master/graph/badge.svg)](https://codecov.io/gh/hrbrmstr/webfinger)
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
## [1] "https://rud.is/b/author/hrbrmstr/"
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

Some endpoints are friendlier than others:

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

## webfinger Metrics

| Lang | \# Files | (%) | LoC | (%) | Blank lines | (%) | \# Lines |  (%) |
|:-----|---------:|----:|----:|----:|------------:|----:|---------:|-----:|
| R    |        4 | 0.4 |  42 | 0.4 |          13 | 0.2 |       57 | 0.31 |
| Rmd  |        1 | 0.1 |  11 | 0.1 |          20 | 0.3 |       35 | 0.19 |
| SUM  |        5 | 0.5 |  53 | 0.5 |          33 | 0.5 |       92 | 0.50 |

clock Package Metrics for webfinger
