## Test environments

* local ubuntu 20.04.2 install, R 4.2.1
* macOS-latest (on github actions)
* win-builder (devel and release)

## R CMD check results

0 errors | 1 warnings | 0 notes

* There is an error on Win-devel based on the unavailability of the `utf8` package, 
  but I don't think that anything I can fix. 

* There are two URLs that are only available via `http`. All others
  have been changed to `https`.

* There is a WARNING being thrown by a test, but it's a problem with 
  `webshot` not accounting for the change to the behavior of `&&` and `||`
  in `if()` in R 4.2.0.
  <https://stackoverflow.com/questions/72848442/r-warning-lengthx-2-1-in-coercion-to-logical1/72848495#72848495>
```
Warning (tests.R:40:5): save_webshot works
'length(x) = 4 > 1' in coercion to 'logical(1)'
Backtrace:
 1. mdsr::save_webshot(x, tempfile())
      at tests.R:40:4
 2. webshot::webshot(...)
      at mdsr/R/webshot.R:39:2
 3. webshot (local) argToVec(cliprect)
 4. base::vapply(...)
 5. webshot (local) FUN(X[[i]], ...)
```

## Reverse dependencies

There are no reverse dependencies.
