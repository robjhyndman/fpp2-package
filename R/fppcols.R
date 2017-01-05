# Colours for graphs in fpp2

fppcols <- function(...)
{
  fpp_palette <- function(n)
  {
    colvec <- c(
    #Data="#000000", #black
    "#E69F00", #orange
    "#56B4E9", #sky_blue
    "#CC79A7", #reddish_purple
    "#D55E00", #vermillion
    "#009E73", #bluish_green
    "#F0E442", #yellow
    "#0072B2" #blue
    )
    ncols <- length(colvec)
    if (n > ncols)
    {
      warning("This manual palette can handle a maximum of ",
        ncols, " values. You have supplied ", n, ".", call. = FALSE)
    }
    colvec[seq_len(n)]
  }
  ggplot2::discrete_scale("colour", "fpp", fpp_palette, ...)
}
