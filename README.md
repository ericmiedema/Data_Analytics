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

1 - Make sure you have a recent version version of swirl:

    install.packages(c('swirl','googlesheets'))

2 - Enter the following from the R console:

    library(swirl)
    install_course_github('ericmiedema','Data_Analytics')
    swirl()

3 - Test submission by selecting 1: Set up and following instructions.

### Uninstall a course or loading issue

If you’d like to remove a course at any time, you can use
`uninstall_course("Course Name Here")` or `uninstall_all_courses()` to
start fresh. If there is a issue with a specific topic use the default
“R Programming: The basics of programming” and send the
`savehistory(file = "topic_name.txt")` to <emiedema@jessup.edu> to
indicate completion.
