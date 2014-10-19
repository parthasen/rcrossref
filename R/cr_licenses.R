#' Search CrossRef licenses
#'
#' BEWARE: The API will only work for CrossRef DOIs.
#'
#' @export
#'
#' @template args
#' @template moreargs
#'
#' @examples \donttest{
#' cr_licenses()
#' cr_licenses(query = 'elsevier')
#' cr_licenses(filter = c(member=78))
#' cr_licenses(filter = c(issn='2090-8091'))
#' }

`cr_licenses` <- function(query = NULL, filter = NULL, offset = NULL, limit = NULL, sample = NULL, 
  sort = NULL, order = NULL, .progress="none", ...)
{
  filter <- filter_handler(filter)
  args <- cr_compact(list(query = query, filter = filter, offset = offset, rows = limit,
                          sample = sample, sort = sort, order = order))
  
  tmp <- licenses_GET(args=args, ...)
  df <- rbind_all(lapply(tmp$message$items, data.frame, stringsAsFactors=FALSE))
  meta <- parse_meta(tmp)
  list(meta=meta, data=df)
}

licenses_GET <- function(args, ...) cr_GET("licenses", args, todf = FALSE, ...)