## Test environments

* local ubuntu 20.04.2 install, R 4.2.1
* macOS-latest (on github actions)
* win-builder (devel and release)
* rhub (win, fedora, ubuntu)

## R CMD check results

0 errors | 0 warnings | 2 notes

* Previously problematic tests have been skipped. 

* There is an error on Win-devel based on the unavailability of the `utf8` package, 
  but I don't think that anything I can fix. 

* There are two URLs that are only available via `http`. All others
  have been changed to `https`.

* There are two NOTEs for which we plead for mercy:

```
❯ checking installed package size ... NOTE
    installed size is  5.2Mb
    sub-directories of 1Mb or more:
      data   5.0Mb
```
```
❯ checking data for non-ASCII characters ... NOTE
    Note: found 2866 marked UTF-8 strings
```
## Reverse dependencies

There are no reverse dependencies.
