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

# So swirl does not repeat execution of plot commands
AUTO_DETECT_NEWVAR <- FALSE

# Returns TRUE if e$expr matches any of the expressions given
# (as characters) in the argument.
ANY_of_exprs <- function(...){
  e <- get("e", parent.frame())
  any(sapply(c(...), function(expr)omnitest(expr)))
}

equiv_val <- function(correctVal){
  e <- get("e", parent.frame()) 
  #print(paste("User val is ",e$val,"Correct ans is ",correctVal))
  isTRUE(all.equal(correctVal,e$val))
  
}

# Get the swirl state
getState <- function(){
  # Whenever swirl is running, its callback is at the top of its call stack.
  # Swirl's state, named e, is stored in the environment of the callback.
  environment(sys.function(1))$e
}

# Get the value which a user either entered directly or was computed
# by the command he or she entered.
getVal <- function(){
  getState()$val
}

# Get the last expression which the user entered at the R console.
getExpr <- function(){
  getState()$expr
}