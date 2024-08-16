## Test environments

* local ubuntu 22.04.1 LTS, R 4.2.2
* macOS-latest (on github actions)
* ubuntu-latest (on github actions)
* win-builder (devel and release)
* rhub (win, fedora, solaris, ubuntu)

## R CMD check results

0 errors | 0 warnings | 2 notes

* Documentation syntax errors have been fixed. 

* Previously problematic tests using the Internet have been skipped. 

* Previously problematic tests examples the Internet are not run. 

* There are two URLs that are only available via `http`. All others
  have been changed to `https`.
* There are two NOTEs for which we plead for mercy:

```
❯ checking installed package size ... NOTE
    installed size is  5.4Mb
    sub-directories of 1Mb or more:
      data   5.1Mb
```
```
❯ checking data for non-ASCII characters ... NOTE
    Note: found 2866 marked UTF-8 strings
```
## Reverse dependencies

There are no reverse dependencies.
