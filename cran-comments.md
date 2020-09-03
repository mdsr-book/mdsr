## Test environments

* local ubuntu 18.04.5 install, R 4.0.2
* macOS-latest (on github actions)
* win-builder (devel and release)

## R CMD check results

0 errors | 0 warnings | 1 note

* checking installed package size ... NOTE
  installed size is  6.4Mb
  sub-directories of 1Mb or more:
    data   6.2Mb
* We plead for mercy with respect to the package size. The data sets included
  are used in the corresponding book, and are necessary for reproducibility. 

* checking for future file timestamps ... NOTE
* I don't know what this is about but I think it is spurious.

* There is an error on Win-devel based on the unavailability of the `utf8` package, 
  but I don't think that anything I can fix. 

* There are three URLs that are only available via `http`. All others
  have been changed to `https`

## Reverse dependencies

There are no reverse dependencies.

