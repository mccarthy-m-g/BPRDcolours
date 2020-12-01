context("palettes")

library(ggplot2)

test_that("bprd_pal returns as expected", {
  expect_error(bprd_pal("a"), "Invalid palette name.")
  x <- bprd_pal()
  expect_is(x, "character")
  expect_equal(bprd_pal("bprd_series", reverse = TRUE), rev(bprd_pal("bprd_series")))
})

test_that("view_bprd_pals returns as expected", {
  file <- file.path(tempdir(), "test-plot.png")
  png(file)
  expect_is(p <- view_bprd_pals(), "NULL")
  expect_is(view_bprd_pals(c("hellboy", "abe")), "NULL")
  dev.off()
  unlink(file, recursive = TRUE, force = TRUE)
})

test_that("bprd scale functions return as expected", {
  p <- ggplot(diamonds, aes(carat, stat(count), color = cut, fill = cut)) +
    geom_density(position = "fill")
  expect_is(p + scale_color_bprd("hellboy") +
              scale_fill_bprd("abe"), "ggplot")
  p <- ggplot(diamonds, aes(carat, price)) + geom_bin2d()
  expect_is(p + scale_fill_bprd("hellboy", discrete = FALSE), "ggplot")
  p <- ggplot(diamonds, aes(carat, price)) +
    geom_density_2d(aes(color = ..level..))
  expect_is(p + scale_color_bprd("abe", discrete = FALSE), "ggplot")
})
