% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{results}
\alias{results}
\title{Results from running prewas() on the example data.}
\format{
List of 5 objects.
\describe{
  \item{allele_mat}{Matrix. Character matrix of nucleotides (alleles).
  Multiallelic sites represented on multiple lines in the matrix. Dim: 360 x
  13. Rows are genomic loci. Columns are samples. Row names include only
  genomic position and do not have gene information.}
  \item{bin_mat}{Matrix. Binary matrix (nucleotides stored as 0 or 1).
  Multiallelic sites represented on multiple lines in the matrix. Alleles in
  overlapping genes are represented on multiple lines in the matrix. Rownames
  include genomic position and gene. Dim: 1016 x 13. Rows are genomic loci.
  Columns are samples.}
  \item{ar_results}{Data.frame. Dim: 360 x 1. Rows are genomic loci. The
  column is the major allele at that position. If anc=TRUE, then this object
  would be a 306 x 2 data.frame where the first column is the ancestral
  allele at that position inferred from ancestral reconstruction and the
  second column is the maximum likelihood probability.}
  \item{dup}{Integer vector. Length = 360. The number refers to the original
  genomic loci in the VCF file. The occurrence count of the number is one
  less than the number of alleles. Ex: the 1st genomic locus (Position "1")
  occurs once in `dup` indicating that this is a biallelic site. In contrast,
  the 5th genomic locus in the vcf (Position 18) occurs twice indicating that
  this is a triallelic site (represented in two rows: 18 and 18.1)}
  \item{gene_mat}{Matrix. Gene-based matrix. Genes with any SNP stored as 1,
  genes without SNPs stored as 0. Rows are genes. Columns are samples. Dim:
  96 x 13.}
 }
}
\usage{
results
}
\description{
Output from prewas().
results <- prewas::prewas(dna = prewas::vcf,
                          tree = prewas::tree,
                          outgroup = prewas::outgroup,
                          gff = prewas::gff,
                          anc = FALSE)
}
\keyword{datasets}
