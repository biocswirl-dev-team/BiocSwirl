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

