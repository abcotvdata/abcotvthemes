
<!-- README.md is generated from README.Rmd. Please edit that file -->

# abcotvthemes

<!-- badges: start -->
<!-- badges: end -->

This package houses ggplot themes for the ABC Owned Television Stations
data team.

## Installation

This package is not on CRAN. You can install the development version of
`abcotvthemes` from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("abcotvdata/abcotvthemes")
```

## Usage

There is currently one function, the main theme used by the ABC Owned
Television Stations data team. Add `theme_abcotv` at the end of your
regular ggplot code to change the style of the graphic to the ABC OTV
theme.

## Example

``` r
chart <- ggplot(mtcars, aes(x=wt, y=mpg)) + geom_point() + labs(title = "A headline about dogs and cats", subtitle = "Some serious data about how dogs are better") + theme_abcotv()
```
