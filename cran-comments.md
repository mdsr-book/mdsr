## Test environments

* local ubuntu 22.04.1 LTS, R 4.4.1
* macOS-latest (on github actions)
* ubuntu-latest (on github actions)
* win-builder (devel and release)

## R CMD check results

0 errors | 0 warnings | 2 notes

* Documentation syntax errors have been fixed. 

* There is one URL that is only available via `http`. All others
  have been changed to `https`.
* There are two longstanding NOTEs for which we plead for mercy:

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
