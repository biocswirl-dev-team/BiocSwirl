## course directory
# contains all the install info
# this would be the only data that needs to be up to date
course_directory <- data.frame(course_name = c("mbb343"), github_username = c("JuliaPhilipp"), branch = c("main"), description = c("Intro to R and data analysis"))


## list courses
#' This function will list all available BiocSwirl courses available for installation
#' @export
#' @examples
#' list_courses()
list_courses <- function(){
  course_directory[,c("course_name","description")]
}


## load_course function
#' A function to load and install a specificed BiocSwirl course for you
#' @param course options are 'mbb343' and 'rna_seq'. More information on available courses via list_courses()
#' @export
#' @examples
#' load_course('mbb343')

load_course <- function(course){
  # test if course is installed already?


  # check if course string is legit
  # issue error message if not
  if (!course %in% course_directory$course_name){
    stop(paste(course,"is not a valid course name. Use list_courses() to check for available courses."))
  }

  # look up string in table to install appropriate course
  selected_course <- course_directory[which(course_directory$course_name == course),]

  # install from github
  swirl::install_course_github(github_username = selected_course$github_username,
                               course_name = selected_course$course_name,
                               branch = selected_course$branch)

  # success message!
  message(paste(course, "course installed successfully"))

  # open swirl immediately?
}


# load all available courses
#' This function will load and install all available BiocSwirl courses for you
#' @export
#' @examples
#' load_all()

load_all <- function(){
  for (i in 1:nrow(course_directory)){
    selected_course <- course_directory[i,]

    # install from github
    swirl::install_course_github(github_username = selected_course$github_username,
                                 course_name = selected_course$course_name,
                                 branch = selected_course$branch)

  }

  # success message!
  message("all courses installed successfully!")
}


# load courses with warning
#' This function will load and install all available BiocSwirl courses for you
#' @description  and create warnings (for demo purposes) because I was too scared to include this in the other function.
#' @export
#' @param course name of the course that could produce a warning like 'mbb343' if already installed
#' @examples
#' load_courses_warning('mbb343')
load_courses_warning <- function(course) {
  if (!course %in% course_directory$course_name){
    stop(paste(course,"is not a valid course name. Use list_courses() to check for available courses."))
  }

  # look up string in table to install appropriate course
  selected_course <- course_directory[which(course_directory$course_name == course),]

  out <- tryCatch(
    {
      # Just to highlight: if you want to use more than one
      # R expression in the "try" part then you'll have to
      # use curly brackets.
      # 'tryCatch()' will return the last evaluated expression
      # in case the "try" part was completed successfully

      #message("This is the 'try' part")

      swirl::install_course_github(github_username = selected_course$github_username,
                                   course_name = selected_course$course_name,
                                   branch = selected_course$branch)
      # The return value of `readLines()` is the actual value
      # that will be returned in case there is no condition
      # (e.g. warning or error).
      # You don't need to state the return value via `return()` as code
      # in the "try" part is not wrapped inside a function (unlike that
      # for the condition handlers for warnings and error below)
    },
    error=function(cond) {
      message(paste("course does not seem to exist:", course))
      message("Here's the original error message:")
      message(cond)
      # Choose a return value in case of error
      return(NA)
    },
    warning=function(cond) {
      warning(paste("course", course, "already installed"))
      # Choose a return value in case of warning
      return(NULL)
    },
    finally={
      # NOTE:
      # Here goes everything that should be executed at the end,
      # regardless of success or error.
      # If you want more than one expression to be executed, then you
      # need to wrap them in curly brackets ({...}); otherwise you could
      # just have written 'finally=<expression>'
      #message(paste("Processed URL:", course))
      #message("Some other message at the end")
    }
  )
  return(out)
}
