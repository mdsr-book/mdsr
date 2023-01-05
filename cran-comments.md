## Test environments

* local ubuntu 22.04.1 LTS, R 4.2.2
* macOS-latest (on github actions)
* ubuntu-latest (on github actions)
* win-builder (devel and release)
* rhub (win, fedora, solaris, ubuntu)

## R CMD check results

0 errors | 0 warnings | 2 notes

* This is a resubmission. 

* Previously problematic tests using the Internet have been skipped. 

* Previously problematic tests examples the Internet are not run. 

* Checking failed on Solaris because two dependencies are not available:
```
ERROR: dependencies ‘kableExtra’, ‘webshot2’ are not available for package ‘mdsr’
```

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
