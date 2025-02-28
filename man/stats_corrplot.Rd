% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/corrplot.r
\name{stats_corrplot}
\alias{stats_corrplot}
\title{Visualize regression with scatterplots and trendlines.}
\usage{
stats_corrplot(
  df,
  x,
  y = attr(df, "response"),
  layers = "tc",
  stat.by = NULL,
  facet.by = NULL,
  colors = TRUE,
  shapes = TRUE,
  test = "emmeans",
  fit = "gam",
  at = NULL,
  level = 0.95,
  p.adj = "fdr",
  p.top = Inf,
  alt = "!=",
  mu = 0,
  caption = TRUE,
  check = FALSE,
  ...
)
}
\arguments{
\item{df}{The dataset (data.frame or tibble object). "Dataset fields"
mentioned below should match column names in \code{df}. Required.}

\item{x}{Dataset field with the x-axis values. Equivalent to the \code{regr}
argument in \code{\link[=stats_table]{stats_table()}}. Required.}

\item{y}{A numeric metadata column name to use for the y-axis.
Default: \code{attr(df, 'response')}}

\item{layers}{One or more of
\code{c("trend", "confidence", "point", "name", "residual")}. Single
letter abbreviations are also accepted. For instance,
\code{c("trend", "point")} is equivalent to \code{c("t", "p")} and \code{"tp"}.
Default: \code{"tc"}}

\item{stat.by}{Dataset field with the statistical groups. Must be
categorical. Default: \code{NULL}}

\item{facet.by}{Dataset field(s) to use for faceting. Must be categorical.
Default: \code{NULL}}

\item{colors}{How to color the groups. Options are:
\describe{
\item{\code{TRUE} - }{ Automatically select colorblind-friendly colors. }
\item{\code{FALSE} or \code{NULL} - }{ Don't use colors. }
\item{a palette name - }{ Auto-select colors from this set. E.g. \code{"okabe"} }
\item{character vector - }{ Custom colors to use. E.g. \code{c("red", "#00FF00")} }
\item{named character vector - }{ Explicit mapping. E.g. \code{c(Male = "blue", Female = "red")} }
}
See "Aesthetics" section below for additional information.
Default: \code{TRUE}}

\item{shapes}{Shapes for each group.
Options are similar to \code{colors}'s: \code{TRUE}, \code{FALSE}, \code{NULL}, shape
names (typically integers 0 - 17), or a named vector mapping
groups to specific shape names.
See "Aesthetics" section below for additional information.
Default: \code{TRUE}}

\item{test}{Method for computing p-values: \code{'none'}, \code{'emmeans'}, or
\code{'emtrends'}. Default: \code{'emmeans'}}

\item{fit}{How to fit the trendline. \code{'lm'}, \code{'log'}, or \code{'gam'}.
Default: \code{'gam'}}

\item{at}{Position(s) along the x-axis where the means or slopes should be
evaluated. Default: \code{NULL}, which samples 100 evenly spaced positions
and selects the position where the p-value is most significant.}

\item{level}{The confidence level for calculating a confidence interval.
Default: \code{0.95}}

\item{p.adj}{Method to use for multiple comparisons adjustment of
p-values. Run \code{p.adjust.methods} for a list of available
options. Default: \code{"fdr"}}

\item{p.top}{Only display taxa with the most significant differences in
abundance. If \code{p.top} is >= 1, then the \code{p.top} most
significant taxa are displayed. If \code{p.top} is less than one, all
taxa with an adjusted p-value <= \code{p.top} are displayed.
Recommended to be used in combination with the \code{taxa} parameter
to set a lower bound on the mean abundance of considered taxa.
Default: \code{Inf}}

\item{alt}{Alternative hypothesis direction. Options are \code{'!='}
(two-sided; not equal to \code{mu}), \code{'<'} (less than \code{mu}), or \code{'>'}
(greater than \code{mu}). Default: \code{'!='}}

\item{mu}{Reference value to test against. Default: \code{0}}

\item{caption}{Add methodology caption beneath the plot.
Default: \code{TRUE}}

\item{check}{Generate additional plots to aid in assessing data normality.
Default: \code{FALSE}}

\item{...}{Additional parameters to pass along to ggplot2 functions.
Prefix a parameter name with a layer name to pass it to only that
layer. For instance, \code{p.size = 2} ensures only the points have their
size set to \code{2}.}
}
\value{
A \code{ggplot2} plot. The computed data points, ggplot2 command,
stats table, and stats table commands are available as \verb{$data},
\verb{$code}, \verb{$stats}, and \verb{$stats$code}, respectively.
}
\description{
Visualize regression with scatterplots and trendlines.
}
\section{Aesthetics}{


All built-in color palettes are colorblind-friendly. The available
categorical palette names are: \code{"okabe"}, \code{"carto"}, \code{"r4"},
\code{"polychrome"}, \code{"tol"}, \code{"bright"}, \code{"light"},
\code{"muted"}, \code{"vibrant"}, \code{"tableau"}, \code{"classic"},
\code{"alphabet"}, \code{"tableau20"}, \code{"kelly"}, and \code{"fishy"}.

Shapes can be given as per base R - numbers 0 through 17 for various shapes,
or the decimal value of an ascii character, e.g. a-z = 65:90; A-Z = 97:122 to use
letters instead of shapes on the plot. Character strings may used as well.
}

\examples{
    library(rbiom)
    
    biom <- subset(hmp50, `Body Site` \%in\% c('Saliva', 'Stool'))
    df   <- adiv_table(rarefy(biom))
    stats_corrplot(df, "age", stat.by = "body")
    stats_corrplot(
      df       = df, 
      x        = "Age", 
      stat.by  = "Body Site", 
      facet.by = "Sex", 
      layers   = "trend" )
}
\seealso{
Other visualization: 
\code{\link{adiv_boxplot}()},
\code{\link{adiv_corrplot}()},
\code{\link{bdiv_boxplot}()},
\code{\link{bdiv_corrplot}()},
\code{\link{bdiv_heatmap}()},
\code{\link{bdiv_ord_plot}()},
\code{\link{plot_heatmap}()},
\code{\link{rare_corrplot}()},
\code{\link{rare_multiplot}()},
\code{\link{rare_stacked}()},
\code{\link{stats_boxplot}()},
\code{\link{taxa_boxplot}()},
\code{\link{taxa_corrplot}()},
\code{\link{taxa_heatmap}()},
\code{\link{taxa_stacked}()}
}
\concept{visualization}
