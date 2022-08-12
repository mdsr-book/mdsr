## Test environments

* local ubuntu 20.04.2 install, R 4.2.1
* macOS-latest (on github actions)
* win-builder (devel and release)
* rhub (win, fedora, ubuntu)

## R CMD check results

1 errors | 0 warnings | 2 notes

* Previously problematic tests have been skipped. 

* There is an error on Win-devel based on the unavailability of the `utf8` package, 
  but I don't think that anything I can fix. 

* There are two URLs that are only available via `http`. All others
  have been changed to `https`.

* There is an ERROR being thrown by a test, but it's a problem with 
  [`webshot` not accounting for the change](https://github.com/wch/webshot/issues/101) 
  in the behavior of `&&` and `||`
  in `if()` in R 4.2.0, and thus not something I can fix.
  See <https://stackoverflow.com/questions/72848442/r-warning-lengthx-2-1-in-coercion-to-logical1/72848495#72848495>
  This bug has been reported: <https://github.com/wch/webshot/issues/101>
  The offending is skipped on CRAN.
```

 ----------- FAILURE REPORT -------------- 
 --- failure: length > 1 in coercion to logical ---
 --- srcref --- 
: 
 --- package (from environment) --- 
webshot
 --- call from context --- 
FUN(X[[i]], ...)
 --- call from argument --- 
is.null(x) || is.na(x)
 --- R stacktrace ---
where 1: FUN(X[[i]], ...)
where 2: vapply(arg, FUN.VALUE = character(1), function(x) {
    if (is.null(x) || is.na(x)) 
        NA_character_
    else paste(x, collapse = ",")
})
where 3: argToVec(cliprect)
where 4: webshot::webshot(tmp_file, file = out, vwidth = vwidth, vheight = vheight, 
    cliprect = cliprect, ...)
where 5: withCallingHandlers(expr, warning = function(w) if (inherits(w, 
    classes)) tryInvokeRestart("muffleWarning"))
where 6: suppressWarnings(webshot::webshot(tmp_file, file = out, vwidth = vwidth, 
    vheight = vheight, cliprect = cliprect, ...))
where 7 at tests.R#42: save_webshot(x, tempfile())
where 8: eval(code, test_env)
where 9: eval(code, test_env)
where 10: withCallingHandlers({
    eval(code, test_env)
    if (!handled && !is.null(test)) {
        skip_empty()
    }
}, expectation = handle_expectation, skip = handle_skip, warning = handle_warning, 
    message = handle_message, error = handle_error)
where 11: doTryCatch(return(expr), name, parentenv, handler)
where 12: tryCatchOne(expr, names, parentenv, handlers[[1L]])
where 13: tryCatchList(expr, names[-nh], parentenv, handlers[-nh])
where 14: doTryCatch(return(expr), name, parentenv, handler)
where 15: tryCatchOne(tryCatchList(expr, names[-nh], parentenv, handlers[-nh]), 
    names[nh], parentenv, handlers[[nh]])
where 16: tryCatchList(expr, classes, parentenv, handlers)
where 17: tryCatch(withCallingHandlers({
    eval(code, test_env)
    if (!handled && !is.null(test)) {
        skip_empty()
    }
}, expectation = handle_expectation, skip = handle_skip, warning = handle_warning, 
    message = handle_message, error = handle_error), error = handle_fatal, 
    skip = function(e) {
    })
where 18: test_code(desc, code, env = parent.frame(), reporter = reporter)
where 19 at tests.R#36: test_that("save_webshot works", {
    skip_on_cran()
    if (require(leaflet)) {
        x <- leaflet() %>% addTiles() %>% addMarkers(lng = 174.768, 
            lat = -36.852, popup = "The birthplace of R")
        png <- save_webshot(x, tempfile())
        expect_s3_class(png, "fs_path")
    }
})
where 20: eval(code, test_env)
where 21: eval(code, test_env)
where 22: withCallingHandlers({
    eval(code, test_env)
    if (!handled && !is.null(test)) {
        skip_empty()
    }
}, expectation = handle_expectation, skip = handle_skip, warning = handle_warning, 
    message = handle_message, error = handle_error)
where 23: doTryCatch(return(expr), name, parentenv, handler)
where 24: tryCatchOne(expr, names, parentenv, handlers[[1L]])
where 25: tryCatchList(expr, names[-nh], parentenv, handlers[-nh])
where 26: doTryCatch(return(expr), name, parentenv, handler)
where 27: tryCatchOne(tryCatchList(expr, names[-nh], parentenv, handlers[-nh]), 
    names[nh], parentenv, handlers[[nh]])
where 28: tryCatchList(expr, classes, parentenv, handlers)
where 29: tryCatch(withCallingHandlers({
    eval(code, test_env)
    if (!handled && !is.null(test)) {
        skip_empty()
    }
}, expectation = handle_expectation, skip = handle_skip, warning = handle_warning, 
    message = handle_message, error = handle_error), error = handle_fatal, 
    skip = function(e) {
    })
where 30: test_code(NULL, exprs, env)
where 31: source_file(path, child_env(env), wrap = wrap)
where 32: FUN(X[[i]], ...)
where 33: lapply(test_paths, test_one_file, env = env, wrap = wrap)
where 34: doTryCatch(return(expr), name, parentenv, handler)
where 35: tryCatchOne(expr, names, parentenv, handlers[[1L]])
where 36: tryCatchList(expr, classes, parentenv, handlers)
where 37: tryCatch(code, testthat_abort_reporter = function(cnd) {
    cat(conditionMessage(cnd), "\n")
    NULL
})
where 38: with_reporter(reporters$multi, lapply(test_paths, test_one_file, 
    env = env, wrap = wrap))
where 39: test_files(test_dir = test_dir, test_package = test_package, 
    test_paths = test_paths, load_helpers = load_helpers, reporter = reporter, 
    env = env, stop_on_failure = stop_on_failure, stop_on_warning = stop_on_warning, 
    wrap = wrap, load_package = load_package)
where 40: test_files(test_dir = path, test_paths = test_paths, test_package = package, 
    reporter = reporter, load_helpers = load_helpers, env = env, 
    stop_on_failure = stop_on_failure, stop_on_warning = stop_on_warning, 
    wrap = wrap, load_package = load_package, parallel = parallel)
where 41: test_dir("testthat", package = package, reporter = reporter, 
    ..., load_package = "installed")
where 42: test_check("mdsr")

 --- value of length: 4 type: logical ---
[1] FALSE FALSE FALSE FALSE
 --- function from context --- 
function (x) 
{
    if (is.null(x) || is.na(x)) 
        NA_character_
    else paste(x, collapse = ",")
}
<bytecode: 0x55b2c04b77d0>
<environment: 0x55b2c02b1cb0>
 --- function search by body ---
 ----------- END OF FAILURE REPORT -------------- 
Fatal error: length > 1 in coercion to logical
```

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
