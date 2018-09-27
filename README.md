<script src="https://cdn.datacamp.com/datacamp-light-latest.min.js"></script>
Data Analytics with R
=====================

This is content of [swirl](http://swirlstats.com) instructions and
practice problems for data analytics with R.

Class Set Up
------------

This course is forked from the [swirl GitHub
repository](https://github.com/swirldev/swirl) and leverages the [swirl
R package](http://swirlstats.com).

For more information regarding swirl, visit
[swirlstats.com](http://swirlstats.com) or the [swirl GitHub
repository](https://github.com/swirldev/swirl).

### Install and run a course automatically from swirl

**This is the preferred method of installing courses.** It automates the
process by allowing you to do everything right from the R console.

1.  Make sure you have a recent version version of swirl:

<!-- -->

    install.packages("swirl")

1.  Enter the following from the R console:

<!-- -->

    library(swirl)
    install_course_github('ericmiedema','Data_Analytics')
    swirl()

1.  If error with automatic download. Download zip GitHub directly and
    load from zip.

<!-- -->

    library(swirl)
    install_course_zip("path/to/file/here/Data_Analytics-master.zip", multi=TRUE, 
                       which_course="Data Analytics")
    swirl()

### Uninstall a course

If you’d like to remove a course at any time, you can use
`uninstall_course("Course Name Here")`.

1: Introduction to data analytics with R
----------------------------------------

Introduction to R
-----------------

[Download R](https://cran.r-project.org/) and [RStudio
Desktop](https://www.rstudio.com/products/rstudio/download/).

-   install.packages(“package”) - Install a single or list of packages
-   setwd(“/folder path”) - Set working directory to specific folder
-   read.csv(“file.csv”, headers = TRUE, stringsAS Factor = FALSE) -
    Read csv file

HOT KEYS

1.  Ctrl + L (clear workspace)
2.  Ctrl + A (select all code)
3.  Ctrl + Enter (run selected code)

Excel R Function Comparison
---------------------------

| Excel                    | R       | Use                                 |
|--------------------------|---------|-------------------------------------|
| sum()                    | sum()   | sum of data                         |
| sqrt()                   | sqrt()  | sqrt of data                        |
| average()                | mean()  | mean of data                        |
| norm.dist()              | pnorm() | area under z distribution           |
| norm.inv()               | qnorm() | lookup Z score with probability     |
| t.dist()                 | pt()    | area under t distribution           |
| t.inv()                  | qt()    | lookup t score with probability     |
| *f*<sub>*x*</sub> button | help()  | help on function                    |
| Cope paste transpose     | t()     | transpose data                      |
| vlookup()                | NA      | Cell lookup are not applicable in R |

Apply
-----

### Problem 1

A [venous thromboembolism
(VTE)](https://en.wikipedia.org/wiki/Venous_thrombosis), is a blood clot
that breaks loose and travels in the blood. This may cause serious
life-threatening condition such as a heart attack or stroke. A d-dimer
test is a blood test that measures a substance that is released when
there is a blood clot and can be used to assess the likelihood of a VTE.

1.  What is the probability of a VTE with a positive d-dimer?
2.  What is the probability of a VTE with a negative d-dimer?

eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIFJhbmRvbSBQYXRpZW50IEdlbmVyYXRvclxudnRlX3BhdGllbnRzPC01MDAgKyBybm9ybSgxLCBtZWFuID0gNTAsIHNkID0gMTApXG5ub25fdnRlX3BhdGllbnQ8LXZ0ZV9wYXRpZW50cyoxMCArIHJub3JtKDEsIG1lYW4gPSAxMDAsIHNkID0gMjApXG5nZW5kZXJzPC1jKFwiTVwiLFwiRlwiKVxuXG5kZl92dGU8LWRhdGEuZnJhbWUoXG4gIEdlbmRlciA9IHNhbXBsZShnZW5kZXJzLHZ0ZV9wYXRpZW50cyxyZXBsYWNlID0gVFJVRSksXG4gIEFnZSA9IHJvdW5kKHJ1bmlmKHZ0ZV9wYXRpZW50cywwLDE1KStybm9ybSh2dGVfcGF0aWVudHMsIG1lYW4gPSA1MCwgc2QgPSAxMCksMCksXG4gIERfRGltZXIgPSByYmlub20odnRlX3BhdGllbnRzLCAxLCAuOCksXG4gIFZURSA9IDEpXG5cbiMjIHByb2JhYmlsaXR5IG9mIFZURSB3aXRoIGEgcG9zaXRpdmUgZC1kaW1lclxuXG4jIyBwcm9iYWJpbGl0eSBvZiBWVEUgd2l0aCBhIHBvc2l0aXZlIGQtZGltZXIiLCJzb2x1dGlvbiI6IlBfVlRFX1BPU19EX0RpbWVyIDwtIHJvdW5kKG1lYW4oZGYkVlRFW2RmJERfRGltZXI9PTFdKSwyKVxuUF9WVEVfTkVHX0RfRGltZXIgPC0gcm91bmQobWVhbihkZiRWVEVbZGYkRF9EaW1lcj09MF0pLDIpIn0=

### Problem 2

Imagine that Tennessee is having an election on the location of its
capital. Using [ranked
pairs](https://en.wikipedia.org/wiki/Ranked_pairs) method determine
where the capital should be.

eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJvcHRpb25zKHN0cmluZ3NBc0ZhY3RvcnMgPSBGQUxTRSlcbnBvcHVsYXRpb248LWRhdGEuZnJhbWUoQ2l0eSA9IGMoXCJNZW1waGlzXCIsXCJOYXNodmlsbGVcIixcIkNoYXR0YW5vb2dhXCIsXCJLbm94dmlsbGVcIiksIFBlcmNlbnQgPSBjKC40MiwuMjYsLjE1LC4xNykpXG5NZW1waGlzPC1kYXRhLmZyYW1lKENpdHkgPSBjKFwiTWVtcGhpc1wiLFwiTmFzaHZpbGxlXCIsXCJDaGF0dGFub29nYVwiLFwiS25veHZpbGxlXCIpLFJhbmsgPSAxOjQpXG5OYXNodmlsbGU8LWRhdGEuZnJhbWUoQ2l0eSA9IGMoXCJOYXNodmlsbGVcIixcIkNoYXR0YW5vb2dhXCIsXCJLbm94dmlsbGVcIixcIk1lbXBoaXNcIiksUmFuayA9IDE6NClcbkNoYXR0YW5vb2dhPC1kYXRhLmZyYW1lKENpdHkgPSBjKFwiQ2hhdHRhbm9vZ2FcIixcIktub3h2aWxsZVwiLFwiTmFzaHZpbGxlXCIsXCJNZW1waGlzXCIpLFJhbmsgPSAxOjQpXG5Lbm94dmlsbGU8LWRhdGEuZnJhbWUoQ2l0eSA9IGMoXCJLbm94dmlsbGVcIixcIkNoYXR0YW5vb2dhXCIsXCJOYXNodmlsbGVcIixcIk1lbXBoaXNcIiksUmFuayA9IDE6NClcblxuIyBDb21wYXJlIE1lbXBoaXMgYW5kIE5hc2h2aWxsZVxuIyBDb21wYXJlIG90aGVyIGFsbCBjaXRpZXNcbiMgRGV0ZXJtaW5lIHdpbm5lciIsInNvbHV0aW9uIjoiIyMgU29sdWlvbiBpbiBkZXZlbG9wbWVudCJ9

### Base Functions

-   Generating, loading and combining data
    -   Read/Write
    -   Combining c(), rbind()/cbind(), merge(), unique()
-   Subsetting
    -   a&lt;-Data\[Data$Character\_variable %in% c(‘ABC’,‘XYZ’),\]
    -   b&lt;-Data\[Data$Numeric\_variable == 1,c(1,“Column B”,3)\]
    -   Special characters: $,==,!, &, \|, ~
    -   Data Types: Data Frames, Factors, Strings, Date/Time, NA  
-   Programming
    -   User defined functions
    -   For/while and if/elseif/then
    -   Lapply and Mapply
-   R workspace / Package Maintanance
    -   getwd(),setwd()
    -   install.packages(‘dply’,dependencies = TRUE), library(dplyr)
    -   rm(), ls(), rm(ls())

[Intro to
R](https://cran.r-project.org/doc/manuals/r-release/R-intro.pdf)  
[Base R - Reference
Card](https://cran.r-project.org/doc/contrib/Short-refcard.pdf)

### Data Wrangling

-   Reshaping Data
-   Group & Summarize
-   Alternative approach to combine and subset data

[Data Wrangling - Cheat
Sheet](https://www.rstudio.com/wp-content/uploads/2015/02/data-wrangling-cheatsheet.pdf)

Practice Examples
-----------------

### Descriptive Statistics Practice

Base on a random generated data for adult patients, what is the standard
deviation

eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJzZXQuc2VlZCgyMDApXG5hZ2VzPC1yb3VuZChybm9ybSgyMDAsbWVhbiA9IDU1LCBzZCA9IDE1KSwwKSAjbGlzdFxuZGY8LWRhdGEuZnJhbWUoQWdlID0gYWdlcykgI2RhdGEgZnJhbWVcbiMgQ2FsY3VsYXRlIHRoZSBtZWFuIC0gdXNpbmcgc3VtL2xlbmd0aCwgbWVhbiBvciBzdW1tYXJ5IGZ1bmN0aW9uc1xuXG4jIENhbGN1bGF0ZSB0aGUgc3RhbmRhcmQgZGV2aWF0aW9uc1xuXG4jIENhbGN1YWx0ZSB0aGUgeiBzY29yZSBhbmQgcGVyY2VudGFnZSBmb3IgNjUgeWVhciBvbGRzIiwic29sdXRpb24iOiJzZXQuc2VlZCgyMDApXG5hZ2VzPC1yb3VuZChybm9ybSgyMDAsbWVhbiA9IDU1LCBzZCA9IDE1KSwwKSAjbGlzdFxuZGY8LWRhdGEuZnJhbWUoQWdlID0gYWdlcykgI2RhdGEgZnJhbWVcblxuIyBDYWxjdWxhdGUgYW5kIHByaW50IHRoZSBtZWFuXG5tZWFuKGFnZXMpXG5cbiMgQ2FsY3VsYXRlIGFuZCBwcmludCB0aGUgc3RhbmRhcmQgZGV2aWF0aW9uXG5kZiRTcXVhcmVfRGV2aWF0aW9uczwtKGRmJEFnZSAtIG1lYW4oZGYkQWdlKSleMlxudmFyaWFuY2U8LXN1bShkZiRTcXVhcmVfRGV2aWF0aW9ucykvKGxlbmd0aChkZiRBZ2UpLTEpXG5zcXJ0KHZhcmlhbmNlKVxuIyMgT1JcbnNkKGFnZXMpXG5cbiMgQ2FsY3VsYXRlIGFuZCBwcmludCB0aGUgeiBzY29yZSAmIHBlcmNlbnRpbGUgZm9yIGEgNjUgeWVhciBvbGRcbno8LSg2NS1tZWFuKGFnZXMpKS9zZChhZ2VzKVxuelxuZG5vcm0oeilcbiMjIE9SXG5kbm9ybSg2NSxtZWFuID0gbWVhbihhZ2VzKSwgc2QgPSBzZChhZ2VzKSkifQ==

Practice \#2 - Benchmarking

eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJpbnN0YWxsLnBhY2thZ2VzKFwiUlNvY3JhdGFcIilcbmxpYnJhcnkoUlNvY3JhdGEpXG5jb21wPC1yZWFkLnNvY3JhdGEoXCJodHRwczovL2RhdGEubWVkaWNhcmUuZ292L3Jlc291cmNlL3VrZmotdHQ2di5jc3ZcIilcblxuIyBXaGF0IGlzIHRoZSB0b3AgZGVjaWxlIGZvciB0aGUgcmF0ZSBvZiBjb21wbGljYXRpb25zIGZvciBoaXAva25lZSByZXBsYWNlbWVudCBwYXRpZW50cz8iLCJzb2x1dGlvbiI6Imluc3RhbGwucGFja2FnZXMoXCJSU29jcmF0YVwiKVxubGlicmFyeShSU29jcmF0YSlcbmNvbXA8LXJlYWQuc29jcmF0YShcImh0dHBzOi8vZGF0YS5tZWRpY2FyZS5nb3YvcmVzb3VyY2UvdWtmai10dDZ2LmNzdlwiKVxuXG4jIyBEYXRhIE1hbmlwdWxhdGlvblxuY29tcDwtY29tcFtjb21wJG1lYXN1cmVfaWQgPT0gXCJDT01QX0hJUF9LTkVFXCIsYygnaG9zcGl0YWxfbmFtZScsJ3Byb3ZpZGVyX2lkJywnbWVhc3VyZV9pZCcsJ21lYXN1cmVfbmFtZScsJ3Njb3JlJywnZGVub21pbmF0b3InKV1cbmNvbXAkc2NvcmU8LWFzLm51bWVyaWMoY29tcCRzY29yZSkvMTAwXG5jb21wJGRlbm9taW5hdG9yPC1hcy5pbnRlZ2VyKGNvbXAkZGVub21pbmF0b3IpXG5jb21wPC1jb21wW2lzLm5hKGNvbXAkZGVub21pbmF0b3IpPT1GQUxTRSxdXG5jb21wJG51bWVyYXRvcjwtY29tcCRkZW5vbWluYXRvcipjb21wJHNjb3JlXG5jb21wJHJhbms8LXJhbmsoY29tcCRzY29yZSwgdGllcy5tZXRob2QgPSAnYXZlcmFnZScpXG5jb21wJHBlcmNlbnRpbGU8LXJvdW5kKGNvbXAkcmFuay9sZW5ndGgoY29tcCRwcm92aWRlcl9pZCksMylcbmNvbXAkdG9wX2RlY2lsZTwtJ05vJ1xuY29tcCR0b3BfZGVjaWxlW2NvbXAkcGVyY2VudGlsZTw9LjFdPC0nWWVzJ1xuY29tcCR0b3BfZGVjaWxlW2NvbXAkcGVyY2VudGlsZSE9bWF4KGNvbXAkcGVyY2VudGlsZVtjb21wJHRvcF9kZWNpbGU9PSdZZXMnXSldPC0nTm8nXG50b3BfZGVjaWxlX3Njb3JlPC11bmlxdWUoY29tcCRzY29yZVtjb21wJHRvcF9kZWNpbGU9PSdZZXMnXSkifQ==

### Probability

Practice \#1 - Probability of Events

Yahtzee! Use the **law of large numbers** and the power of R to generate
large amounts of random data to indicate the probability of Yahtzee on
the first roll. Bonus problem is if it is your last turn and you have 3
rolls to get Yatzee.

eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIFdoYXQgaXMgdGhlIHByb2JhYmlsaXR5IG9mIGdldHRpbmcgWWF0emVlPyIsInNvbHV0aW9uIjoiIyMgU29sdXRpb24gMSB3aXRoIGRhdGEgZnJhbWUgYW5kIFxubGlicmFyeSh0aWR5cilcbmxpYnJhcnkoZHBseXIpXG5cbnNldC5zZWVkKDMxKVxuXG5yb2xsczwtNTAwMDAgI051bWJlciBvZiByb2xsc1xuZGY8LWRhdGEuZnJhbWUoRDEgPSBzYW1wbGUoMTo2LHJvbGxzLHJlcGxhY2UgPSBUUlVFKSwgRDIgPSBzYW1wbGUoMTo2LHJvbGxzLHJlcGxhY2UgPSBUUlVFKSxEMz0gc2FtcGxlKDE6Nixyb2xscyxyZXBsYWNlID0gVFJVRSksXG4gICAgICAgICAgICAgICBENCA9IHNhbXBsZSgxOjYscm9sbHMscmVwbGFjZSA9IFRSVUUpLCBENSA9IHNhbXBsZSgxOjYscm9sbHMscmVwbGFjZSA9IFRSVUUpKSAgI1JhbmRvbSBkYXRhIHNldFxuZGYkUm9sbDwtMTpyb2xscyAjdW5pcXVlIGluZGljYXRvciBmb3Igcm9sbHMgXG5cbmRmYjwtZGYgJT4lIGdhdGhlcihcIlJvbGxcIixcIlZhbHVlXCIpICN0cmFuc2Zvcm0gZGF0YSBmcm9tIFwid2lkZVwiIHRvIFwibG9uZ1wiIHRvIGJlIGFibGVcbmNvbG5hbWVzKGRmYik8LWMoXCJSb2xsXCIsXCJEaWVcIixcIlZhbHVlXCIpXG5kZmI8LWRmYiAlPiUgZ3JvdXBfYnkoUm9sbCwgdmFsdWUpICU+JSAjIEdyb3VwIGJ5IHJvbGwgYW5kIHZhbHVlIHRvIGZpbmQgZHVwbGljYXRlc1xuICBzdW1tYXJpemUoRGllX0NvdW50ID0gbGVuZ3RoKHZhbHVlKSkgIyBDb3VudCBudW1iZXIgb2YgZGljZSB0aGF0IGFyZSB0aGUgc2FtZSBwZXIgcm9sbFxuZmlyc3Rfcm9sbF95YWh0emVlPC1sZW5ndGgoZGYkUm9sbFtkZiREaWVfQ291bnQ9PTVdKS9yb2xscyAjY2FsY3VsYXRlIFlhdHplZSBvdmVyIHRvdGFsIHJvbGxzXG5maXJzdF9yb2xsX3lhaHR6ZWVcblxuIyMgU29sdXRpb24gMiB3aXRoIGZvciBsb29wIHdpdGggaWYvZWxzZVxucm9sbHM8LTUwMDAwICNOdW1iZXIgb2Ygcm9sbHNcbnlhaHR6ZWU8LTAgIyBTZXQgeWFodHplZSBpbmRpY2F0b3IgdG8gMFxuXG5mb3IoaSBpbiAxOnJvbGxzKXtcbiAgaWYodmFyKHNhbXBsZSgxOjYsNSxyZXBsYWNlID0gVFJVRSkpPT0wKSB7XG4gICAgeWFodHplZSA8LSB5YWh0emVlICsgMVxuICB9XG59XG5cbnlhaHR6ZWUvcm9sbHMifQ==

Practice \#2 - Probability of Distributions

### Working with Dates

A common frustration with R is working with dates especially when
combining data from multiple sources. There are packages such as
’lubridate\` that can support, but knowing how to work with dates and
write user defined functions to fix problems will help overcome the
frustration.

Practice \#1: Transform this list of dates to a standard format.

eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJkYXRlc19hcmVfdGhlX3dvcnN0PC1jKFwiMi0wMS0yMDE4XCIsXCIwMy0wMy0yMDE4XCIsXCIxLzEvMjAxOFwiLFwiMjAxOC0wNC0wMiAwMDowMDowMFwiKVxuZGY8LWRhdGEuZnJhbWUoRGF0ZSA9IGRhdGVzX2FyZV90aGVfd29yc3QpICNkYXRhIGZyYW1lXG4jIFRyYW5zZm9ybSB0byBkYXRlIGZvcm1hdCIsInNvbHV0aW9uIjoiZGF0ZXNfYXJlX3RoZV93b3JzdDwtYyhcIjItMDEtMjAxOFwiLFwiNS8xLzIwMTggMToyMyBQTVwiLFwiMDMtMDMtMjAxOFwiLFwiMS8xLzIwMThcIixcIjIwMTgtMDQtMDIgMDA6MDA6MDBcIilcbmRmPC1kYXRhLmZyYW1lKERhdGUgPSBkYXRlc19hcmVfdGhlX3dvcnN0KSAjZGF0YSBmcmFtZVxuIyBUcmFuc2Zvcm0gdG8gZGF0ZSBmb3JtYXRcbmRmJERhdGU8LWdzdWIoXCIgLipcIixcIlwiLGRmJERhdGUpICMgLiogc3BlY2lhbCBjaGFyYWN0ZXIgZm9yIGV2ZXJ5dGhpbmdcbmRmJERhdGVfZm9ybWF0PC1hcy5EYXRlKGRmJERhdGUsIGZvcm1hdCA9IFwiJW0tJWQtJVlcIilcbmRmW2lzLm5hKGRmJERhdGVfZm9ybWF0KT09VFJVRSxdICMgZmlsdGVyIE5BIGRhdGVzIFxuZGYkRGF0ZV9mb3JtYXRbaXMubmEoZGYkRGF0ZV9mb3JtYXQpPT1UUlVFXTwtYXMuRGF0ZShkZiREYXRlW2lzLm5hKGRmJERhdGVfZm9ybWF0KT09VFJVRV0sIGZvcm1hdCA9IFwiJW0vJWQvJVlcIikgI3JlcGxhY2UgTkEgZGF0ZXNcbmRmJERhdGVfZm9ybWF0W2lzLm5hKGRmJERhdGVfZm9ybWF0KT09VFJVRV08LWFzLkRhdGUoZGYkRGF0ZVtpcy5uYShkZiREYXRlX2Zvcm1hdCk9PVRSVUVdLCBmb3JtYXQgPSBcIiVZLSVtLSVkXCIpXG5kZiJ9

Practice \#2: Take lessons learned from practice \#1 to write a user
defined function to another list of dates.

eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJkYXRlc19hcmVfdGhlX3dvcnN0PC1jKFwiMi0wMS0yMDE4XCIsXCI1LzEvMjAxOCAxOjIzIFBNXCIsXCIwMy0wMy0yMDE4XCIsXCIxLzEvMjAxOFwiLFwiMjAxOC0wNC0wMiAwMDowMDowMFwiKVxuYW5vdGhlcl9kYXRlX2xpc3Q8LWMoXCIzLzIvMjAxOCAyMzoyMlwiLFwiNi8xLzIwMTggMToyMyBQTVwiLFwiNS00LTIwMThcIixcIjEvMS8yMDE4XCIsXCIyMDE4LTAzLTAxIDAwOjAwOjAwXCIpXG4jIFRyYW5zZm9ybSB0byBkYXRlIGxpc3RzIGZvcm1hdCB3aXRoIHVzZXIgZGVmaW5lZCBmdW5jdGlvbiIsInNvbHV0aW9uIjoiZGF0ZXNfYXJlX3RoZV93b3JzdDwtYyhcIjItMDEtMjAxOFwiLFwiNS8xLzIwMTggMToyMyBQTVwiLFwiMDMtMDMtMjAxOFwiLFwiMS8xLzIwMThcIixcIjIwMTgtMDQtMDIgMDA6MDA6MDBcIilcbmFub3RoZXJfZGF0ZV9saXN0PC1jKFwiMy8yLzIwMTggMjM6MjJcIixcIjYvMS8yMDE4IDE6MjMgUE1cIixcIjUtNC0yMDE4XCIsXCIxLzEvMjAxOFwiLFwiMjAxOC0wMy0wMSAwMDowMDowMFwiKVxuXG4jIFRyYW5zZm9ybSB0byBkYXRlIGZvcm1hdCB3aXRoIHVzZXIgZGVmaW5lZCBmdW5jdGlvblxuZGF0ZV9mdW5jdGlvbl9pc190aGVfYmVzdDwtZnVuY3Rpb24oeCl7XG4gIGRmPC1kYXRhLmZyYW1lKERhdGUgPSBnc3ViKFwiIC4qXCIsXCJcIix4KSkgIyAuKiBzcGVjaWFsIGNoYXJhY3RlciBmb3IgZXZlcnl0aGluZ1xuICBkZiREYXRlX2Zvcm1hdDwtYXMuRGF0ZShkZiREYXRlLCBmb3JtYXQgPSBcIiVtLSVkLSVZXCIpXG4gIGRmJERhdGVfZm9ybWF0W2lzLm5hKGRmJERhdGVfZm9ybWF0KT09VFJVRV08LWFzLkRhdGUoZGYkRGF0ZVtpcy5uYShkZiREYXRlX2Zvcm1hdCk9PVRSVUVdLCBmb3JtYXQgPSBcIiVtLyVkLyVZXCIpICNyZXBsYWNlIE5BIGRhdGVzXG4gIGRmJERhdGVfZm9ybWF0W2lzLm5hKGRmJERhdGVfZm9ybWF0KT09VFJVRV08LWFzLkRhdGUoZGYkRGF0ZVtpcy5uYShkZiREYXRlX2Zvcm1hdCk9PVRSVUVdLCBmb3JtYXQgPSBcIiVZLSVtLSVkXCIpXG4gIGRmJERhdGVfZm9ybWF0XG59XG4gIFxuZGF0ZV9mdW5jdGlvbl9pc190aGVfYmVzdChkYXRlc19hcmVfdGhlX3dvcnN0KVxuZGF0ZV9mdW5jdGlvbl9pc190aGVfYmVzdChhbm90aGVyX2RhdGVfbGlzdCkifQ==

### Working with Strings

Large amounts of data is freetext instead of discrete elements defined
by a list or form. Also the source of data could be a PDF or website as
large text. In order to analyze strings, the categorical or numeric data
needs to be extracted from the larger text.

Practice \#1: Extracting data from string

eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJtZXNzeV9zdHJpbmc8LWMoXCJIZXJlIGlzIHNvbWUgdGV4dCB0aGF0IHdlIHdhbnQgdG8gZm9ybWF0OiBOYW1lID0gRXJpYyBNaWVkZW1hLCBCaXJ0aGRheSA9IDEyLzEyLzE5ODcsIEFnZSA9IDMwLCBOYW1lID0gTm9haCBCb2dnZXNzLCAgQmlydGhkYXkgPSBOQSwgQWdlID0gMzUuIEVORCBvZiBkb2N1bWVudFwiKVxuXG4jIENyZWF0ZSBhIGRhdGEgZnJhbWUgd2l0aCBOYW1lLCBCaXJ0aGRheSwgQWdlIGNvbHVtbnMiLCJzb2x1dGlvbiI6Im1lc3N5X3N0cmluZzwtYyhcIkhlcmUgaXMgc29tZSB0ZXh0IHRoYXQgd2Ugd2FudCB0byBmb3JtYXQ6IE5hbWUgPSBFcmljIE1pZWRlbWEsIEJpcnRoZGF5ID0gMTIvMTIvMTk4NywgQWdlID0gMzAsIE5hbWUgPSBOb2FoIEJvZ2dlc3MsIEJpcnRoZGF5ID0gTkEsIEFnZSA9IDM1LiBFTkQgb2YgZG9jdW1lbnRcIilcblxuIyBDcmVhdGUgYSBkYXRhIGZyYW1lIHdpdGggTmFtZSwgQmlydGhkYXksIEFnZSBjb2x1bW5zXG5cbnRleHRfZGF0YTwtZ3N1YihcIi4qOiBcIixcIlwiLG1lc3N5X3N0cmluZykgIyAuKiBcIkV2ZXJ5dGhpbmcgV2lkZWNhcmRcIiBcbnRleHRfZGF0YTwtZ3N1YihcIlxcXFwuIEVORC4qXCIsXCJcIix0ZXh0X2RhdGEpICMgXFxcXCBjb252ZXJ0cyBzcGVjaWFsIGNoYXJhY3RlciB0byBub3JtYWxcblxuZGY8LSBzdHJzcGxpdCh0ZXh0X2RhdGEsIHNwbGl0ID0gXCIsXCIpICNzcGxpdCBkYXRhIGVsZW1lbnRzXG5kZjwtIGRhdGEuZnJhbWUoWCA9IHVubGlzdChkZikpICMgY3JlYXRlIGRhdGEgZnJhbWUgb3IgdXNlIGFwcGx5L2xvb3BcbmRmJFg8LWdzdWIoXCJeIFwiLFwiXCIsZGYkWCkgIyBeIFwiU3RhcnQgb2Ygc3RyaW5nXCJcbmRmJFg8LWdzdWIoXCIgJFwiLFwiXCIsZGYkWCkgIyAkIFwiRW5kIG9mIHN0cmluZ1wiXG5kZiRWYWx1ZTwtZ3N1YihcIi4qPSBcIixcIlwiLGRmJFgpXG5kZiRDb2x1bW48LWdzdWIoXCIgPS4qXCIsXCJcIixkZiRYKVxuZGYkSUQ8LTE6bGVuZ3RoKGRmJFgpICMgU2VxdWVuY2Ugb2Ygcm93c1xuZGYkSUQ8LWNlaWxpbmcoZGYkSUQvMykgIyBQZXJzb24gSURcblxubGlicmFyeSh0aWR5cilcbmxpYnJhcnkoZHBseXIpXG5kZmI8LSBkZiAlPiUgc2VsZWN0KC1YKSAlPiUgc3ByZWFkKENvbHVtbiwgVmFsdWUpIn0=

Additional, R file, string or base functions can help organize data or
text from multiple files.

Practice \#2: Collapse data multiple files into a single string

eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJzZXQuc2VlZCgxNSlcbmRpci5jcmVhdGUoXCJGYWtlX0RhdGFcIikgI2NyZWF0ZSBmb2xkZXJcbiMgQWRkIHJhbmRvbSBkYXRhXG5mb3IoaSBpbiBzZXFfYWxvbmcobGV0dGVycykpe1xuICB3cml0ZS5jc3YoZGF0YS5mcmFtZShEYXRhID0gZmxvb3Iocm5vcm0oMTUsIG1lYW4gPSAxMDAsIHNkID01KSkpLFxuICAgICAgICAgICAgcGFzdGUoXCJGYWtlX0RhdGEvXCIsbGV0dGVyc1tpXSwnLmNzdicsc2VwID0gXCJcIikscm93Lm5hbWVzID0gRkFMU0UpXG59XG5cbiMgQ29sbGFwc2UgZGF0YSBtdWx0aXBsZSBmaWxlcyBpbnRvIGEgc2luZ2xlIHN0cmluZyIsInNvbHV0aW9uIjoic2V0LnNlZWQoMTUpXG5kaXIuY3JlYXRlKFwiRmFrZV9EYXRhXCIpICNjcmVhdGUgZm9sZGVyXG4jIEFkZCByYW5kb20gZGF0YVxuZm9yKGkgaW4gc2VxX2Fsb25nKGxldHRlcnMpKXtcbiAgd3JpdGUuY3N2KGRhdGEuZnJhbWUoRGF0YSA9IGZsb29yKHJub3JtKDE1LCBtZWFuID0gMTAwLCBzZCA9NSkpKSxcbiAgICAgICAgICAgIHBhc3RlKFwiRmFrZV9EYXRhL1wiLGxldHRlcnNbaV0sJy5jc3YnLHNlcCA9IFwiXCIpLHJvdy5uYW1lcyA9IEZBTFNFKVxufVxuXG4jIENyZWF0ZSBhIGRhdGEgZnJhbWUgd2l0aCBOYW1lLCBCaXJ0aGRheSwgQWdlIGNvbHVtbnNcbmZpbGVfbmFtZXM8LWxpc3QuZmlsZXMoXCJGYWtlX0RhdGEvXCIscGF0dGVybiA9IFwiXFxcXC5jc3ZcIilcblxuIyBTb2x1dGlvbiAxIHVzaW5nIHJiaW5kIGZvciBkYXRhIGZyYW1lXG5kZjwtZG8uY2FsbChcInJiaW5kXCIsbGFwcGx5KHBhc3RlMChcIkZha2VfRGF0YS9cIixmaWxlX25hbWVzKSxyZWFkLmNzdixoZWFkZXIgPSBUUlVFKSlcbnBhc3RlKGRmJERhdGEsIGNvbGxhcHNlID0gXCIgXCIpXG5cbiMgU29sdXRpb24gMiB1bnNpbmcgdW5saXN0XG5kYXRhMTwtdW5saXN0KGxhcHBseShwYXN0ZShcIkZha2VfRGF0YS9cIixmaWxlX25hbWVzLHNlcCA9IFwiXCIpLHJlYWQuY3N2LGhlYWRlciA9IFRSVUUpKVxucGFzdGUoZGF0YTEsIGNvbGxhcHNlID0gXCIgXCIpIn0=

Learning Notes
--------------

This reference document utilizes datacamp’s `tutorial` package for the
interative online problems. A similar package for step by step practice
in R is the `learnr` package.
