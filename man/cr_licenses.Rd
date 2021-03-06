% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/cr_licenses.R
\name{cr_licenses}
\alias{cr_licenses}
\title{Search CrossRef licenses}
\usage{
cr_licenses(query = NULL, offset = NULL, limit = NULL, sample = NULL,
  sort = NULL, order = NULL, .progress = "none", ...)
}
\arguments{
\item{query}{Query terms}

\item{offset}{Number of record to start at, from 1 to infinity.}

\item{limit}{Number of results to return in the query. Not relavant when searching with specific
dois. Default: 20. Max: 1000}

\item{sample}{(integer) Number of random results to return. when you use the sample parameter,
the rows and offset parameters are ignored.}

\item{sort}{(character) Field to sort on, one of score, relevance, updated, deposited, indexed,
or published.}

\item{order}{(character) Sort order, one of 'asc' or 'desc'}

\item{.progress}{Show a \code{plyr}-style progress bar? Options are "none", "text", "tk", "win,
and "time".  See \code{\link[plyr]{create_progress_bar}} for details of each.}

\item{...}{Named parameters passed on to \code{\link[httr]{GET}}}
}
\description{
Search CrossRef licenses
}
\details{
BEWARE: The API will only work for CrossRef DOIs.
}
\examples{
\dontrun{
cr_licenses()
# query for something, e.g. a publisher
cr_licenses(query = 'elsevier')
}
}
\references{
\url{https://github.com/CrossRef/rest-api-doc/blob/master/rest_api.md}
}

