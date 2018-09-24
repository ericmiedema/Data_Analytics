# Data Analytics with R courses

This is a collection of interactive courses for data analytics to practice R.

This course is forked from the [swirl GitHub repository](https://github.com/swirldev/swirl) and leverages the [swirl R package](http://swirlstats.com). 

For more information regarding swirl, visit [swirlstats.com](http://swirlstats.com) or the [swirl GitHub repository](https://github.com/swirldev/swirl).

## Install and run a course automatically from swirl

**This is the preferred method of installing courses.** It automates the process by allowing you to do everything right from the R console.

1) Make sure you have a recent version version of swirl:

```
install.packages("swirl")
```

2) Enter the following from the R console:

```
library(swirl)
install_course_github('ericmiedema','Data_Analytics')
swirl()
```

3)  If error with automatic download.  Download zip GitHub directly and load from zip.

```
library(swirl)
install_course_zip("path/to/file/here/Data_Analytics-master.zip", multi=TRUE, 
                   which_course="Data Analytics")
swirl()
```

## Uninstall a course

If you'd like to remove a course at any time, you can use `uninstall_course("Course Name Here")`.

