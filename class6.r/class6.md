class6
================
Amir Ferry
10/18/2019

# This is H1

This is Class 6 work. This text will be **bold**

## A H2

``` r
D1 <- read.table(file="datafile1.txt", sep = ",", header = TRUE)
D2 <- read.table(file="datafile2.txt", sep = "$", header = TRUE)
D3 <- read.table(file="datafile3.txt", sep = "")
D3
```

    ##   V1 V2 V3
    ## 1  1  6  a
    ## 2  2  7  b
    ## 3  3  8  c
    ## 4  4  9  d
    ## 5  5 10  e

Our first function

``` r
# y is a default value
add <- function(x,y=1) {
    # Sum input x and y
    x+y
}

add(5)
```

    ## [1] 6

``` r
# Vectorize the input
add(c(2,4))
```

    ## [1] 3 5

range function gives you two elements (min and max)

``` r
range(c(5,2,7,10))
```

    ## [1]  2 10

# na.rm is used to remove NA’s when computing range

``` r
rescale <- function(x) {
 rng <-range(x, na.rm = TRUE)
 (x - rng[1]) / (rng[2] - rng[1])
}
```

``` r
rescale(c(1,2,NA,3))
```

    ## [1] 0.0 0.5  NA 1.0

``` r
rescale3 <- function(x, na.rm=TRUE, plot=FALSE) {
 if(na.rm) {
 rng <-range(x, na.rm=na.rm)
 } else {
 rng <-range(x)
 }
 print("Hello")
 answer <- (x - rng[1]) / (rng[2] - rng[1])
 print("is it me you are looking for?")
 if(plot) {
 plot(answer, typ="b", lwd=4)
 }
 print("I can see it in ...")
}

rescale3(1:10)
```

    ## [1] "Hello"
    ## [1] "is it me you are looking for?"
    ## [1] "I can see it in ..."
