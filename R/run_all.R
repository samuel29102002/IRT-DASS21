# =============================================================================
#  run_all.R -- renders every analysis report in order (Steps 0-9)
#
#  Usage (any working directory inside the project):  source("R/run_all.R")
#  Each report writes an .html and a .md file next to its .Rmd in analysis/.
# =============================================================================
root <- local({ p <- normalizePath(getwd())
  while (!file.exists(file.path(p, "data", "DASS.xlsx"))) {
    if (dirname(p) == p) stop("project root not found"); p <- dirname(p) }
  p })
reports <- sort(list.files(file.path(root, "analysis"), pattern = "^[0-9]{2}_.*\\.Rmd$", full.names = TRUE))
t0 <- Sys.time()
for (f in reports) {
  message("\n>>> rendering ", basename(f))
  rmarkdown::render(f, envir = new.env(), quiet = TRUE)
}
message("\nAll reports rendered in ", round(difftime(Sys.time(), t0, units = "mins"), 1), " minutes.")
