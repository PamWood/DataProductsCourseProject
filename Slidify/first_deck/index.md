--- 
title       : Compound Monthly Growth Rate (CMGR)
subtitle    : Data Products Course Project
author      : Pam Wood Pate
job         : Data Analyst
framework   : html5slides   # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : solarized_light      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
--- 

## Defintion

Paraphrased from www.investopedia.com/terms/c/cagr.asp:

The month-over-month growth rate of an investment over a specified period of time. The compound monthly growth rate is calculated by taking the nth root of the total percentage growth rate, where n is the number of months in the period being considered.

--- &twocol

### Why?  
<br/>
  
*** =left
Why CMGR? 
- Often compound yearly growth rate is not realistic

*** =right
Why Shiny App?
- Calculates the formula automatically, just enter necessary values

--- .class #id


## Formula

- **CMGR** = Compund Monthly Growth Rate
- **L** = Last Month's value
- **F** = First Month's value
- **N** = Total Number of Month's

CMGR = ((L / F) ^ (1 / N)) - 1

--- .class #id

## Function

```r
CMGR <- function(last, first, n) {
  paste(round((((last / first) ^ (1 / n)) - 1) * 100, digits = 2), "%")
  }

CMGR(200,100,4)
```

```
## [1] "18.92 %"
```


