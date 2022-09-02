#' Add ABC OTV theme to ggplot graphic
#'
#'This function adds the ABC OTV theme to ggplot graphics.
#' @keywords theme_abcotv
#' @export
#' @examples
#' library(tidyverse)
#' library(ggtext)
#' chart <- ggplot(mtcars, aes(x=wt, y=mpg)) + geom_point() + labs(title = "A headline about dogs and cats", subtitle = "Some serious data about how dogs are better") + theme_abcotv()

theme_abcotv <- function () {
  theme_gray(base_size=12, base_family="Avenir") %+replace%
    theme(plot.title = element_textbox_simple(size = 24,
                                              family = "Proxima Nova Bold",
                                              color = "white",
                                              fill = "#00215c",
                                              halign = 0.05,
                                              lineheight = 1.5,
                                              padding = margin(5, 1, 5, 1),
                                              margin = margin(0, 0, 0, 0)),
          plot.subtitle = element_textbox_simple(size = 14,
                                                 family = "Proxima Nova",
                                                 color = "white",
                                                 #fill = "#51585f",
                                                 fill = "#667f99",
                                                 halign = 0.1,
                                                 lineheight = 1.5,
                                                 padding = margin(5, 1, 5, 1),
                                                 margin = margin(0, 0, 5, 0)))
}
