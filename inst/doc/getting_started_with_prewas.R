## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(prewas)
vcf = prewas::vcf
gff = prewas::gff
tree = prewas::tree
outgroup = prewas::outgroup

## ----minimal_prewas_run, warning = FALSE--------------------------------------
results_minimal = prewas(dna = vcf, 
                         anc = FALSE)

## -----------------------------------------------------------------------------
table(results_minimal$dup)

## ----maximal_prewas_run, warning = FALSE--------------------------------------
results_maximal = prewas(dna = vcf, 
                         tree = tree, 
                         outgroup = outgroup, 
                         gff = gff,
                         anc = TRUE)

## -----------------------------------------------------------------------------
dim(results_maximal$allele_mat)

## -----------------------------------------------------------------------------
head(results_maximal$allele_mat,10)

## -----------------------------------------------------------------------------
dim(results_maximal$bin_mat)

## -----------------------------------------------------------------------------
head(results_maximal$allele_mat)

## -----------------------------------------------------------------------------
head(results_maximal$bin_mat, 10)

## -----------------------------------------------------------------------------
head(results_maximal$ar_results)

## -----------------------------------------------------------------------------
head(results_maximal$gene_mat)

## -----------------------------------------------------------------------------
results_maximal$tree

## ----results_no_tree, warning = FALSE-----------------------------------------
results_no_tree = prewas(dna = vcf, 
                         gff = gff,
                         anc = TRUE)

## -----------------------------------------------------------------------------
results_no_tree$tree

