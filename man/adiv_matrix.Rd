% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/adiv_table.r
\name{adiv_matrix}
\alias{adiv_matrix}
\title{Create a matrix of samples x alpha diversity metrics.}
\usage{
adiv_matrix(biom, adiv = ".all", transform = "none", cpus = NULL)
}
\arguments{
\item{biom}{An \link[=rbiom_objects]{rbiom object}, such as from \code{\link[=as_rbiom]{as_rbiom()}}.
Any value accepted by \code{\link[=as_rbiom]{as_rbiom()}} can also be given here.}

\item{adiv}{Alpha diversity metric(s) to use. Options are: \code{"OTUs"},
\code{"Shannon"}, \code{"Chao1"}, \code{"Simpson"}, and/or
\code{"InvSimpson"}. Set \code{adiv=".all"} to use all metrics.
Multiple/abbreviated values allowed.
Default: \code{".all"}}

\item{transform}{Transformation to apply. Options are:
\code{c("none", "rank", "log", "log1p", "sqrt", "percent")}. \code{"rank"} is
useful for correcting for non-normally distributions before applying
regression statistics. Default: \code{"none"}}

\item{cpus}{The number of CPUs to use. Set to \code{NULL} to use all available,
or to \code{1} to disable parallel processing. Default: \code{NULL}}
}
\value{
A numeric matrix with samples as rows. The first column is
\bold{Depth}. Remaining columns are the alpha diversity metric names
given by \code{adiv}: one or more of \bold{OTUs}, \bold{Shannon},
\bold{Chao1}, \bold{Simpson}, and \bold{InvSimpson}.
}
\description{
Create a matrix of samples x alpha diversity metrics.
}
\examples{
    library(rbiom)
    
    biom <- slice_head(hmp50, n = 5)
    
    adiv_matrix(biom)
}
