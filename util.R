trim <- function (x) gsub("^\\s+|\\s+$", "", x)

# Freedman-Diaconis rule for calculating bin width.
bw = function(x) diff(range(x)) / (2 * IQR(x) / length(x)^(1/3))

mode = function(x) {
  ux = unique(x)
  tab = tabulate(match(x, ux))
  ux[tab == max(tab)]
}