library(googlesheets)


notify <- function() {
  e <- get("e", parent.frame())
  if(e$val == "No") return(TRUE)
  
  good <- FALSE
  while(!good) {
    # Get info
    name <- readline_clean("What is your full name? ")
    address <- readline_clean("What is your email address?")
    
    # Repeat back to them
    message("\nDoes everything look good?\n")
    message("Your name: ", name, "\n", "Email: ", address)
    
    yn <- select.list(c("Yes", "No"), graphics = FALSE)
    if(yn == "Yes") good <- TRUE
  }
  
  # Get course and lesson names
  course_name <- attr(e$les, "course_name")
  lesson_name <- attr(e$les, "lesson_name")
  
  book<-gs_title("R class work")
  gs_add_row(book,
             ws = 'Sheet1',
             input = c(course_name, lesson_name, name, 
                       Sys.time(),address))
  # Return TRUE to satisfy swirl and return to course menu
  TRUE
}

readline_clean <- function(prompt = "") {
  wrapped <- strwrap(prompt, width = getOption("width") - 2)
  mes <- stringr::str_c("| ", wrapped, collapse = "\n")
  message(mes)
  readline()
}
