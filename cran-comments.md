## Test environments

* local OS X install, R 3.4.3
* local ubuntu 16.04.2 install, R 3.4.4
* ubuntu 14.04.5 (on travis-ci), R 3.3.3, 3.5.0, unstable
* win-builder (devel and release)

## R CMD check results

0 errors | 0 warnings | 1 note

* checking installed package size ... NOTE
  installed size is  5.6Mb
  sub-directories of 1Mb or more:
    data   5.4Mb
* We plead for mercy with respect to the package size. The data sets included
are used in the corresponding book, and are necessary for reproducibility. 
* We removed the problematic `tidyverse` dependency


## Reverse dependencies

There are no reverse dependencies.

