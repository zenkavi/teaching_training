library(tidyverse)
library(rmarkdown)

theme_set(theme_bw())

render_html_nb <- function(file_name, output_dir){rmarkdown::render(file_name, output_dir, html_notebook(toc = T, toc_float = T, toc_depth = 2, code_folding = 'hide'))}