ensg_to_entrezid <- function(ensg) {
  #require("org.Hs.eg.db")
  xx <- as.list(org.Hs.egENSEMBL2EG)
  entrezid <- rep(NA, length(ensg))
  idx <- ensg %in% names(xx)
  entrezid[idx] <- xx[ensg[idx]]
  entrezid <- sapply(entrezid, "[", 1)
  entrezid
}

entrezid_to_symbol <- function(entrezid) {
  #require("org.Hs.eg.db")
  x <- org.Hs.egSYMBOL
  mapped_genes <- mappedkeys(x)
  xx <- as.list(x[mapped_genes])
  name <- rep(NA, length(entrezid))
  idx <- entrezid %in% names(xx)
  name[idx] <- xx[entrezid[idx]]
  name <- sapply(name, "[", 1)
  name[!idx] <- entrezid[!idx]
  name
}

ensg_to_symbol <- function(ensg) {
  #require("org.Hs.eg.db")
  entrezid <- ensg_to_entrezid(ensg)
  x <- org.Hs.egSYMBOL
  mapped_genes <- mappedkeys(x)
  xx <- as.list(x[mapped_genes])
  name <- rep(NA, length(ensg))
  idx <- entrezid %in% names(xx)
  name[idx] <- xx[entrezid[idx]]
  name <- sapply(name, "[", 1)
  name[!idx] <- ensg[!idx]
  name
}



