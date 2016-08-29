## Test environments
* local OS X install, R 3.3.1
* local ubuntu 16.04 install, R 3.3.1
* ubuntu 12.04 (on travis-ci), R 3.3.1
* win-builder (devel and release)

## R CMD check results

0 errors | 0 warnings | 2 note

* This is a new release.
* checking installed package size ... NOTE
  installed size is  5.5Mb
  sub-directories of 1Mb or more:
    data   5.3Mb
* We plead for mercy with respect to the package size. The data sets included
are used in the corresponding book, and are necessary for reproducibility. 
* Fixed call to `person()` in DESCRIPTION
* Removed vignette builder from DESCRIPTION
* Revised title and added URL and ISBN


## Reverse dependencies

This is a new release, so there are no reverse dependencies.

