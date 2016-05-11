\name{ensg_to_symbol}
\alias{ensg_to_symbol}
\title{Convert ENSEMBL gene ID to gene symbol}
\usage{
  ensg_to_symbol(ensg)
}
\description{
  Converts ENSEMBL gene IDs to gene symbols
}
\arguments{
  \item{ensg}{A vector of ENSEMBL gene IDs}
}
\examples{
  ensg_to_symbol(c("ENSG00000225789", "ENSG00000245532"))
}
