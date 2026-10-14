# DASS-21: CTT, IRT, DIF, CFA and measurement invariance

Analysis code for my final essay in *Item Response Theory* (QDS, University of Padova,
SoSe 2026): a psychometric analysis of the Depression Anxiety Stress Scales-21.

| Report | Content |
|---|---|
| `analysis/00_environment.Rmd` | packages and versions |
| `analysis/01_data.Rmd` | data checks, missing data, analysis sample, dichotomisation |
| `analysis/02_ctt.Rmd` | descriptives and classical test theory |
| `analysis/03_irt_binary.Rmd` | Rasch (CML), 1PL and 2PL under two dichotomisation rules |
| `analysis/04_dif.Rmd` | DIF: gender; age and education |
| `analysis/05_cfa.Rmd` | one-factor, correlated three-factor, second-order and bifactor CFA (WLSMV) |
| `analysis/06_reliability.Rmd` | omega variants, bifactor indices, comparison of omega estimates |
| `analysis/07_invariance.Rmd` | measurement invariance across gender and age |
| `analysis/08_grm.Rmd` | graded response model, PCM/GPCM |
| `analysis/09_outputs.Rmd` | tables, figures and the numbers used in the essay |

Rendered reports are in `analysis/*.html`; the essay source is in `essay/`.

## Reproduce

1. Put `DASS.xlsx` in `data/` (not included, see `data/README.md`).
2. Open `DASS21_project.Rproj` in RStudio, knit `analysis/00_environment.Rmd` once.
3. Run `source("R/run_all.R")`.
4. Compile `essay/main.tex` (pdfLaTeX + Biber).
