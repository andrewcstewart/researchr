#' Document Templates
#'
#' @return
#' @export
#'
#' @examples
add_method <- function() {
  rmarkdown::draft("my_article.Rmd", template = "method", package = "researchr")
}
