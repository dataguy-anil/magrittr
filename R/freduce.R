#' Apply a list of functions sequentially
#'
#' This function applies the first function to \code{value}, then the
#' next function to the result of the previous function call, etc. 
#' 
#' @param value initial value.
#' @param function_list a list of functions.
#' @return The result after applying each function in turn.
#'
#'
#' @export
freduce <- function(value, function_list)
{
  if (length(function_list) == 1L)
    function_list[[1L]](value)
  else 
    Recall(function_list[[1L]](value), function_list[-1L])
}
