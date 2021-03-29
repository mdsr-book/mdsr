## Test environments

* local ubuntu 20.04.2 install, R 4.0.4
* macOS-latest (on github actions)
* win-builder (devel and release)

## R CMD check results

0 errors | 0 warnings | 0 notes

* There is an error on Win-devel based on the unavailability of the `utf8` package, 
  but I don't think that anything I can fix. 

* There are two URLs that are only available via `http`. All others
  have been changed to `https`.

* Broken URLs have been corrected, and \doi was inserted.

## Reverse dependencies

There are no reverse dependencies.

