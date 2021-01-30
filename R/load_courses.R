## list courses
#' This function will list all available BiocSwirl courses available for installation
#' @export
#' @examples
#' \dontrun{
#' list_courses()
#' }
list_courses <- function(){
  course_directory[,c("course_name","description")]
}


## load_course function
#' A function to load and install a specificed BiocSwirl course for you
#' @param course options are 'RNAseq' and 'Intro_to_Data_Science'. More information on available courses via list_courses()
#' @export
#' @examples
#' \dontrun{
#' load_course('RNAseq')
#' load_course('Intro_to_Data_Science')
#' }

load_course <- function(course) {
  if (!course %in% course_directory$course_name){
    stop(paste(course,"is not a valid course name. Use list_courses() to check for available courses."))
  }

  # look up string in table to install appropriate course
  selected_course <- course_directory[which(course_directory$course_name == course),]

  # test if course is installed already?
  if (file.exists(paste0(swirl_courses_dir(),"/",selected_course$course_full))){
    stop(paste(course, "is already installed"))
  }
  out <- tryCatch(
    {

      swirl::install_course_github(github_username = selected_course$github_username,
                                   course_name = selected_course$course_full,
                                   branch = selected_course$branch)
    },
    error=function(cond) {
      message(paste("course does not seem to exist:", course))
      message("Here's the original error message:")
      message(cond)
      return(NA)
    },
    warning=function(cond) {
      message("There was warning")
      message("Here's the original warning message:")
      message(cond)
      return(NULL)
    },
    finally={
      message(paste(course, "successfully installed"))
      message("You can now start by typing 'start_course()'")
    }
  )
  return(out)
}



# load all available courses
#' This function will load and install all available BiocSwirl courses for you
#' @export
#' @examples
#' \dontrun{
#' load_all()
#' }

load_all <- function(){
  message("Installing all BiocSwirl courses will take a while. Please be patient")
  for (i in 1:nrow(course_directory)){
    selected_course <- course_directory[i,]

    # install from github
    swirl::install_course_github(github_username = selected_course$github_username,
                                 course_name = selected_course$course_full,
                                 branch = selected_course$branch)

  }

  # success message!
  message("all courses installed successfully!")
}

# start course
#' This function will start the course environment for you
#' @import swirl
#' @export
#' @examples
#' \dontrun{
#' start_course()
#' }

start_course <- function(){
  swirl::swirl()
}
