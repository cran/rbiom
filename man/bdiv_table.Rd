% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bdiv_table.r
\name{bdiv_table}
\alias{bdiv_table}
\alias{bdiv_matrix}
\alias{bdiv_distmat}
\title{Distance / dissimilarity between samples.}
\usage{
bdiv_table(
  biom,
  bdiv = "Bray-Curtis",
  weighted = TRUE,
  normalized = TRUE,
  tree = NULL,
  md = ".all",
  within = NULL,
  between = NULL,
  delta = ".all",
  transform = "none",
  ties = "random",
  seed = 0,
  cpus = NULL
)

bdiv_matrix(
  biom,
  bdiv = "Bray-Curtis",
  weighted = TRUE,
  normalized = TRUE,
  tree = NULL,
  within = NULL,
  between = NULL,
  transform = "none",
  ties = "random",
  seed = 0,
  cpus = NULL
)

bdiv_distmat(
  biom,
  bdiv = "Bray-Curtis",
  weighted = TRUE,
  normalized = TRUE,
  tree = NULL,
  within = NULL,
  between = NULL,
  transform = "none",
  cpus = NULL
)
}
\arguments{
\item{biom}{An \link[=rbiom_objects]{rbiom object}, such as from \code{\link[=as_rbiom]{as_rbiom()}}.
Any value accepted by \code{\link[=as_rbiom]{as_rbiom()}} can also be given here.}

\item{bdiv}{Beta diversity distance algorithm(s) to use. Options are:
\code{"Bray-Curtis"}, \code{"Manhattan"}, \code{"Euclidean"},
\code{"Jaccard"}, and \code{"UniFrac"}. For \code{"UniFrac"}, a
phylogenetic tree must be present in \code{biom} or explicitly
provided via \verb{tree=}. Multiple/abbreviated values allowed.
Default: \code{"Bray-Curtis"}}

\item{weighted}{Take relative abundances into account. When
\code{weighted=FALSE}, only presence/absence is considered.
Multiple values allowed. Default: \code{TRUE}}

\item{normalized}{Only changes the "Weighted UniFrac" calculation.
Divides result by the total branch weights. Default: \code{TRUE}}

\item{tree}{A \code{phylo} object representing the phylogenetic
relationships of the taxa in \code{biom}. Only required when
computing UniFrac distances. Default: \code{biom$tree}}

\item{md}{Dataset field(s) to include in the output data frame, or \code{'.all'}
to include all metadata fields. Default: \code{'.all'}}

\item{within, between}{Dataset field(s) for intra- or inter- sample
comparisons. Alternatively, dataset field names given elsewhere can
be prefixed with \code{'=='} or \code{'!='} to assign them to \code{within} or
\code{between}, respectively. Default: \code{NULL}}

\item{delta}{For numeric metadata, report the absolute difference in values
for the two samples, for instance \code{2} instead of \code{"10 vs 12"}.
Default: \code{TRUE}}

\item{transform}{Transformation to apply. Options are:
\code{c("none", "rank", "log", "log1p", "sqrt", "percent")}. \code{"rank"} is
useful for correcting for non-normally distributions before applying
regression statistics. Default: \code{"none"}}

\item{ties}{When \code{transform="rank"}, how to rank identical values.
Options are: \code{c("average", "first", "last", "random", "max", "min")}.
See \code{rank()} for details. Default: \code{"random"}}

\item{seed}{Random seed for permutations. Must be a non-negative integer.
Default: \code{0}}

\item{cpus}{The number of CPUs to use. Set to \code{NULL} to use all available,
or to \code{1} to disable parallel processing. Default: \code{NULL}}
}
\value{
\describe{
\item{\code{bdiv_matrix()} - }{ An R matrix of samples x samples. }
\item{\code{bdiv_distmat()} - }{ A dist-class distance matrix. }
\item{\code{bdiv_table()} - }{
A tibble data.frame with columns names .sample1, .sample2, .weighted,
.bdiv, .distance, and any fields requested by \code{md}. Numeric metadata
fields will be returned as \code{abs(x - y)}; categorical metadata fields as
\code{"x"}, \code{"y"}, or \code{"x vs y"}. }
}
}
\description{
Distance / dissimilarity between samples.
}
\section{Metadata Comparisons}{


Prefix metadata fields with \code{==} or \code{!=} to limit comparisons to within or
between groups, respectively. For example, \code{stat.by = '==Sex'} will
run calculations only for intra-group comparisons, returning "Male" and
"Female", but NOT "Female vs Male". Similarly, setting
\code{stat.by = '!=Body Site'} will only show the inter-group comparisons, such
as "Saliva vs Stool", "Anterior nares vs Buccal mucosa", and so on.

The same effect can be achieved by using the \code{within} and \code{between}
parameters. \code{stat.by = '==Sex'} is equivalent to
\verb{stat.by = 'Sex', within = 'Sex'}.
}

\examples{
    library(rbiom)
    
    # Subset to four samples
    biom <- hmp50$clone()
    biom$counts <- biom$counts[,c("HMP18", "HMP19", "HMP20", "HMP21")]
    
    # Return in long format with metadata
    bdiv_table(biom, 'unifrac', md = ".all")
    
    # Only look at distances among the stool samples
    bdiv_table(biom, 'unifrac', md = c("==Body Site", "Sex"))
    
    # Or between males and females
    bdiv_table(biom, 'unifrac', md = c("Body Site", "!=Sex"))
    
    # All-vs-all matrix
    bdiv_matrix(biom, 'unifrac')
    
    # All-vs-all distance matrix
    dm <- bdiv_distmat(biom, 'unifrac')
    dm
    plot(hclust(dm))

}
\seealso{
Other beta_diversity: 
\code{\link{bdiv_boxplot}()},
\code{\link{bdiv_clusters}()},
\code{\link{bdiv_corrplot}()},
\code{\link{bdiv_heatmap}()},
\code{\link{bdiv_ord_plot}()},
\code{\link{bdiv_ord_table}()},
\code{\link{bdiv_stats}()},
\code{\link{distmat_stats}()}
}
\concept{beta_diversity}
