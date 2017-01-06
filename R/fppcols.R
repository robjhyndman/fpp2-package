# Colours for graphs in fpp2

fppcols <- function(...)
{
  fpp_palette <- function(n)
  {
    colvec <- c(
    "#E69F0088", #orange
    "#56B4E988", #sky_blue
    "#CC79A788", #reddish_purple
    "#009E7388", #bluish_green
    "#F0E44288", #eyllow
    "#0072B288", #blue
    "#D55E0088", #vermillion
    "#00000088" #black
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
