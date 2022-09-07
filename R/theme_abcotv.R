#' Add ABC OTV theme to ggplot graphic
#'
#'This function adds the ABC OTV theme to ggplot graphics.
#' @keywords theme_abcotv internal
#' @export
#' @examples
#' library(tidyverse)
#' library(ggtext)
#' chart <- ggplot(mtcars, aes(x=wt, y=mpg)) + geom_point() + labs(title = "A headline about dogs and cats", subtitle = "Some serious data about how dogs are better") + theme_abcotv()

theme_abcotv <- function (base_size = 12, base_family = base) {

  half_line <- base_size/2

  if ("extrafont" %in% rownames(installed.packages()))
  {
    #library(extrafont)
    extrafont::loadfonts(quiet = TRUE)
    base <- "Proxima Nova Bold"
  } else {
    base <- "Avenir"
  }

  #list(
    theme_gray(
      base_size= base_size, base_family = base_family) %+replace%
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
                                                   margin = margin(0, 0, 5, 0)),
            axis.ticks = element_line(colour = NA, size = 0.3),
            axis.ticks.length = unit(2, "pt"),
            axis.ticks.length.x = NULL,
            axis.ticks.length.x.top = NULL,
            axis.ticks.length.x.bottom = NULL,
            axis.ticks.length.y = NULL,
            axis.ticks.length.y.left = NULL,
            axis.ticks.length.y.right = NULL,
            panel.grid.major.y = element_line(colour = "white", size = 0.25),
            panel.grid.minor.y = element_blank(),
            panel.grid.major.x = element_blank(),
            panel.grid.minor.x = element_blank(),
            panel.spacing = unit(base_size/2, "pt"),
            panel.ontop = FALSE,
            legend.background = element_rect(colour = NA),
            legend.spacing = unit(0.4, "cm"),
            legend.spacing.x = NULL,
            legend.spacing.y = NULL,
            legend.margin = margin(0.2, 0.2, 0.2, 0.2, "cm"),
            legend.key = element_rect(fill = "white", colour = "white"),
            legend.key.size = unit(1.2, "lines"),
            legend.key.height = NULL,
            legend.key.width = NULL,
            legend.text = element_text(size = rel(0.9)),
            legend.text.align = NULL,
            legend.title = element_text(hjust = 0, size = rel(1)),
            legend.title.align = NULL,
            legend.position = "bottom",
            legend.direction = NULL,
            legend.justification = "center",
            legend.box = NULL,
            legend.box.margin = margin(0, 0, 0, 0, "cm"),
            legend.box.background = element_blank(),
            legend.box.spacing = unit(0.4, "cm")
    #  )
    # plot.margin = unit(c(1, 1, 1, 1), "lines")
    #scale_color_abcotv(),
    #scale_fill_abcotv()

  )}


#' ABC OTV color palette
#'
#' The standard three-color ABC OTV palette for line plots comprises
#' blue, yellow, red.
#'
#' @family color abcotv
#' @export
abcotv_pal <- function() {
  colors <- c("#0059F6", "#FFBA00", "#BE0000")
  max_n <- length(colors)
  f <- manual_pal(colors)
  attr(f, "max_n") <- max_n
  f
}

#' ABC OTV color scales
#'
#' Color scales using the colors in the ABC OTV graphics.
#'
#' @inheritParams ggplot2::scale_color_hue
#' @family color abcotv
#' @rdname scale_abcotv
#' @seealso \code{\link{theme_abcotv}()} for examples.
#' @export
scale_color_abcotv <- function(...) {
  discrete_scale("color", "economist", abcotv_pal(), ...)
}

#' @rdname scale_abcotv
#' @export
scale_colour_abcotv <- scale_color_abcotv

#' @rdname scale_abcotv
#' @export
scale_fill_abcotv <- function(...) {
  discrete_scale("fill", "economist", abcotv_pal(), ...)
}


