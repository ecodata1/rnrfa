library("testthat")
library("rnrfa")
library("lintr")

test_check("rnrfa")

# Static code analysis
# Integration with lintr: tests to fail if there are any lints in the project
if (requireNamespace("lintr", quietly = TRUE)) {
  context("lints")
  test_that("Package Style", {
    lintr::expect_lint_free()
  })
}
