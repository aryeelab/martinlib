library(martinlib)
context("Gene ID conversion")

test_that("ensg_to_symbol converts ENSEMBL gene ID to gene symbol", {
  expect_equal(ensg_to_symbol("ENSG00000102974"), "CTCF")
  expect_equal(ensg_to_symbol(c("ENSG00000102974", "ENSG00000072110", "ENSG00000111640")), c("CTCF", "ACTN1", "GAPDH"))
  expect_equal(ensg_to_symbol(c("ENSG00000102974", "", "ENSG00000111640")), c("CTCF", "", "GAPDH"))
  expect_equal(ensg_to_symbol(c("ENSG00000102974", "ENSG1234567", "ENSG00000111640")), c("CTCF", "ENSG1234567", "GAPDH"))
})
