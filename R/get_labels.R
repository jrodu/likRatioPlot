#' Create labels for likelihood ratio plot
#'
#' @param breaks List generated from get_breaks function
#' @param digits Number of significant digits for labels (default, 2)
#'
#' @return list with labels for x axis and y axis
get_labels <- function(breaks, digits=2){

  round_labels <- function(digits){
    function(my_breaks){
      round(my_breaks, digits)
    }
  }

  round_it <- round_labels(digits)

  x_labels <- round_it(breaks$x_breaks)

  y_labels <- round_it(breaks$y_breaks)

  list(x_labels=x_labels, y_labels=y_labels)

}
