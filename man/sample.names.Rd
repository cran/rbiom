% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/accessors.r
\name{sample.names}
\alias{sample.names}
\title{Get the sample names.}
\usage{
sample.names(biom)
}
\arguments{
\item{biom}{A \code{BIOM} object, as returned from \link{read.biom}.}
}
\value{
A character vector of the sample IDs / names in \code{biom}.
}
\description{
Get the sample names.
}
\examples{
    library(rbiom)
    
    infile <- system.file("extdata", "hmp50.bz2", package = "rbiom")
    biom <- read.biom(infile)
    
    sample.names(biom)

}
\seealso{
Other accessor functions: 
\code{\link{counts}()},
\code{\link{info}()},
\code{\link{metadata}()},
\code{\link{nsamples}()},
\code{\link{ntaxa}()},
\code{\link{phylogeny}()},
\code{\link{sequences}()},
\code{\link{taxa.names}()},
\code{\link{taxa.ranks}()},
\code{\link{taxonomy}()}
}
\concept{accessor functions}
