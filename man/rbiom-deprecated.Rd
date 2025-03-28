% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rbiom-deprecated.r
\name{rbiom-deprecated}
\alias{rbiom-deprecated}
\alias{alpha.div-deprecated}
\alias{alpha.div}
\alias{beta.div-deprecated}
\alias{beta.div}
\alias{counts-deprecated}
\alias{counts}
\alias{info-deprecated}
\alias{info}
\alias{metadata-deprecated}
\alias{metadata}
\alias{nsamples-deprecated}
\alias{nsamples}
\alias{ntaxa-deprecated}
\alias{ntaxa}
\alias{phylogeny-deprecated}
\alias{phylogeny}
\alias{read.biom-deprecated}
\alias{read.biom}
\alias{read.fasta-deprecated}
\alias{read.fasta}
\alias{read.tree-deprecated}
\alias{read.tree}
\alias{sample.names-deprecated}
\alias{sample.names}
\alias{select-deprecated}
\alias{select.rbiom}
\alias{sequences-deprecated}
\alias{sequences}
\alias{subtree-deprecated}
\alias{subtree}
\alias{taxa.names-deprecated}
\alias{taxa.names}
\alias{taxa.ranks-deprecated}
\alias{taxa.ranks}
\alias{taxa.rollup-deprecated}
\alias{taxa.rollup}
\alias{taxonomy-deprecated}
\alias{taxonomy}
\alias{tips-deprecated}
\alias{tips}
\alias{unifrac-deprecated}
\alias{unifrac}
\alias{write.biom-deprecated}
\alias{write.biom}
\alias{write.fasta-deprecated}
\alias{write.fasta}
\alias{write.tree-deprecated}
\alias{write.tree}
\alias{write.xlsx-deprecated}
\alias{write.xlsx}
\alias{as.percent-deprecated}
\alias{as.percent}
\alias{comments-deprecated}
\alias{comments}
\alias{depth-deprecated}
\alias{depth}
\alias{depths_barplot-deprecated}
\alias{depths_barplot}
\alias{has.phylogeny-deprecated}
\alias{has.phylogeny}
\alias{has.sequences-deprecated}
\alias{has.sequences}
\alias{id-deprecated}
\alias{id}
\alias{is.rarefied-deprecated}
\alias{is.rarefied}
\alias{repair-deprecated}
\alias{repair}
\alias{sample_subset-deprecated}
\alias{sample_subset}
\alias{sample.sums-deprecated}
\alias{sample.sums}
\alias{taxa_max-deprecated}
\alias{taxa_max}
\alias{taxa.means-deprecated}
\alias{taxa.means}
\alias{taxa.sums-deprecated}
\alias{taxa.sums}
\alias{top.taxa-deprecated}
\alias{top.taxa}
\alias{top_taxa-deprecated}
\alias{top_taxa}
\alias{comments-set-deprecated}
\alias{comments<-}
\alias{counts-set-deprecated}
\alias{counts<-}
\alias{id-set-deprecated}
\alias{id<-}
\alias{metadata-set-deprecated}
\alias{metadata<-}
\alias{phylogeny-set-deprecated}
\alias{phylogeny<-}
\alias{sample.names-set-deprecated}
\alias{sample.names<-}
\alias{sequences-set-deprecated}
\alias{sequences<-}
\alias{taxa.names-set-deprecated}
\alias{taxa.names<-}
\alias{taxa.ranks-set-deprecated}
\alias{taxa.ranks<-}
\alias{taxonomy-set-deprecated}
\alias{taxonomy<-}
\title{Deprecated functions in package \pkg{rbiom}.}
\usage{
alpha.div(biom, rarefy = FALSE)

beta.div(
  biom,
  method = "Bray-Curtis",
  weighted = TRUE,
  tree = NULL,
  long = FALSE,
  md = FALSE
)

counts(biom)

info(biom)

metadata(biom, field = NULL, cleanup = FALSE)

nsamples(biom)

ntaxa(biom)

phylogeny(biom)

read.biom(src, tree = "auto", prune = FALSE)

read.fasta(file, ids = NULL)

read.tree(src)

sample.names(biom)

\method{select}{rbiom}(
  .data,
  samples = NULL,
  nTop = NULL,
  nRandom = NULL,
  seed = 0,
  biom = NULL,
  ...
)

sequences(biom)

subtree(tree, tips)

taxa.names(biom)

taxa.ranks(biom)

taxa.rollup(
  biom,
  rank = "OTU",
  map = NULL,
  lineage = FALSE,
  sparse = FALSE,
  taxa = NULL,
  long = FALSE,
  md = FALSE
)

taxonomy(biom, ranks = NULL, unc = "asis")

tips(x)

unifrac(biom, weighted = TRUE, tree = NULL)

write.biom(biom, file, format = "json")

write.fasta(seqs, outfile = NULL)

write.tree(tree, file = NULL)

write.xlsx(biom, outfile, depth = 0.1, seed = 0)

as.percent(biom)

comments(biom)

depth(biom)

depths_barplot(
  biom,
  rline = TRUE,
  counts = TRUE,
  labels = TRUE,
  transform = "log10",
  ...
)

has.phylogeny(biom)

has.sequences(biom)

id(biom)

is.rarefied(biom)

repair(biom)

sample_subset(x, ...)

sample.sums(biom, long = FALSE, md = FALSE)

taxa_max(biom, rank = -1, lineage = FALSE, unc = "singly")

taxa.means(biom, rank = NULL)

taxa.sums(biom, rank = NULL)

top.taxa(biom, rank = "OTU", n = Inf)

top_taxa(biom, rank = "OTU", n = Inf)

comments(x) <- value

counts(x) <- value

id(x) <- value

metadata(x) <- value

phylogeny(x) <- value

sample.names(x) <- value

sequences(x) <- value

taxa.names(x) <- value

taxa.ranks(x) <- value

taxonomy(x) <- value
}
\description{
The functions listed below are deprecated and will be defunct in
the near future. When possible, alternative functions with similar
functionality are also mentioned. Help pages for deprecated functions are
available at \code{help("<function>-deprecated")}.
}
\section{\code{alpha.div}}{

Use \code{\link[=adiv_matrix]{adiv_matrix()}} or \code{\link[=adiv_table]{adiv_table()}} instead.
}

\section{\code{beta.div}}{

Use \code{\link[=bdiv_table]{bdiv_table()}} or \code{\link[=bdiv_distmat]{bdiv_distmat()}} instead.
}

\section{\code{counts}}{

Use \verb{$counts} instead.
}

\section{\code{info}}{

Use \code{biom$id}, \code{biom$comment}, etc instead.
}

\section{\code{metadata}}{

Use \code{biom$metadata} or \code{pull(biom, field)} instead.
}

\section{\code{nsamples}}{

Use \code{biom$n_samples} instead.
}

\section{\code{ntaxa}}{

Use \code{biom$n_otus} instead.
}

\section{\code{phylogeny}}{

Use \code{biom$tree} instead.
}

\section{\code{read.biom}}{

Use \code{\link[=as_rbiom]{as_rbiom()}} instead.
}

\section{\code{read.fasta}}{

Use \code{\link[=read_fasta]{read_fasta()}} instead.
}

\section{\code{read.tree}}{

Use \code{\link[=read_tree]{read_tree()}} instead.
}

\section{\code{sample.names}}{

Use \code{biom$samples} instead.
}

\section{\code{select}}{

Use \code{\link[=slice]{slice()}} instead.
}

\section{\code{sequences}}{

Use \code{biom$sequences} instead.
}

\section{\code{subtree}}{

Use \code{\link[=tree_subset]{tree_subset()}} instead.
}

\section{\code{taxa.names}}{

Use \code{biom$otus} instead.
}

\section{\code{taxa.ranks}}{

Use \code{biom$ranks} instead.
}

\section{\code{taxa.rollup}}{

Use \code{\link[=taxa_table]{taxa_table()}} \code{\link[=taxa_matrix]{taxa_matrix()}} instead.
}

\section{\code{taxonomy}}{

Use \verb{$taxonomy} instead.
}

\section{\code{tips}}{

Use \code{tree$tip.label} instead.
}

\section{\code{unifrac}}{

Use \code{\link[=bdiv_distmat]{bdiv_distmat()}} or \code{\link[=bdiv_table]{bdiv_table()}} instead.
For \code{weighted=TRUE}, returns non-normalized values.
}

\section{\code{write.biom}}{

Use \code{\link[=write_biom]{write_biom()}} instead.
}

\section{\code{write.fasta}}{

Use \code{\link[=write_fasta]{write_fasta()}} instead.
}

\section{\code{write.tree}}{

Use \code{\link[=write_tree]{write_tree()}} instead.
}

\section{\code{write.xlsx}}{

Use \code{\link[=write_xlsx]{write_xlsx()}} instead.
}

\section{\code{as.percent}}{

Use \code{biom$counts \%<>\% rescale_cols()} instead.
}

\section{\code{comments}}{

Use \code{biom$comment} instead.
}

\section{\code{depth}}{

Use \code{\link[=sample_sums]{sample_sums()}} instead.
}

\section{\code{depths_barplot}}{

Use \code{\link[=rare_stacked]{rare_stacked()}} instead.
}

\section{\code{has.phylogeny}}{

Use \code{!is.null(biom$tree)} instead.
}

\section{\code{has.sequences}}{

Use \code{!is.null(biom$sequences)} instead.
}

\section{\code{id}}{

Use \code{biom$id} instead.
}

\section{\code{is.rarefied}}{

Use \code{!is.null(biom$depth)} instead.
}

\section{\code{repair}}{

Use \code{as_rbiom(as.list(biom))} instead.
}

\section{\code{sample_subset}}{

Use \code{biom$metadata \%<>\% base::subset()} instead.
}

\section{\code{sample.sums}}{

Use \code{\link[=sample_sums]{sample_sums()}} or \code{\link[=adiv_table]{adiv_table()}} instead.
}

\section{\code{taxa_max}}{

Use \code{taxa_apply(biom, max, sort = 'desc')} instead.
}

\section{\code{taxa.means}}{

Use \code{\link[=taxa_means]{taxa_means()}} instead.
}

\section{\code{taxa.sums}}{

Use \code{\link[=taxa_sums]{taxa_sums()}} instead.
}

\section{\code{top.taxa}}{

Use \code{\link[=taxa_sums]{taxa_sums()}} instead.
}

\section{\code{top_taxa}}{

Use \code{\link[=taxa_sums]{taxa_sums()}} instead.
}

\section{\code{comments-set}}{

Use \verb{biom$comment <-} instead.
}

\section{\code{counts-set}}{

Use \verb{biom$counts <-} instead.
}

\section{\code{id-set}}{

Use \verb{biom$id <-} instead.
}

\section{\code{metadata-set}}{

Use \verb{biom$metadata <-} instead.
}

\section{\code{phylogeny-set}}{

Use \verb{biom$tree <-} instead.
}

\section{\code{sample.names-set}}{

Use \verb{biom$samples <-} instead.
}

\section{\code{sequences-set}}{

Use \verb{biom$sequences <-} instead.
}

\section{\code{taxa.names-set}}{

Use \verb{biom$otus <-} instead.
}

\section{\code{taxa.ranks-set}}{

Use \verb{biom$ranks <-} instead.
}

\section{\code{taxonomy-set}}{

Use \verb{biom$taxonomy <-} instead.
}

\keyword{internal}
