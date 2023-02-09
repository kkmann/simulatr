
# simulatr: Generator for Reproducible Fake Data

This repository contains the model solution of *simulatr*,
an example package for learning about software development best-practices for R packages.

1. 

Make sure that the devtools and pkgdown packages are installed
```
install.packages("devtools")
install.packages("pkgdown")
```
2. To build the documentation locally, use
```
pkgdown::build_site()
```
3. Run the package checks in the root directory by calling and inspect the output to find errors and warnigns.
```
devtools::check()
```
4. 


Hint: start with the file `R/f_simulate_continuous_data.R`

Remember
* to create a branch for each problem, commit your changes, push them,
and open a pull request from your branch on 'main'.
Keep working on your branch until the error/warning you worked on is gone,
then review and merge your pull request. 
