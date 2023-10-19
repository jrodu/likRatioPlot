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
