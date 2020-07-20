library(googlesheets4)


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
  ss <- gs4_get('https://docs.google.com/spreadsheets/d/1Znf8ohl48yrOFwBkgebOS4GzcsR2bvvbI8Mjb-iDwwQ')
  # Get course and lesson names
  ws = 'Sheet1'
  input = data.frame('Course' = attr(e$les, "course_name"),
                     'Lesson' = attr(e$les, "lesson_name"),
                     'Name' = name,
                     'Complete.Time' = Sys.time(),
                     'Email' = address, stringsAsFactors = FALSE)
  ss %>% sheet_append(input, sheet = 'Sheet1')
  # Return TRUE to satisfy swirl and return to course menu
  TRUE
}

readline_clean <- function(prompt = "") {
  wrapped <- strwrap(prompt, width = getOption("width") - 2)
  mes <- stringr::str_c("| ", wrapped, collapse = "\n")
  message(mes)
  readline()
}

hrule <- function() {
  message("\n", paste0(rep("#", getOption("width") - 2), collapse = ""), "\n")
}