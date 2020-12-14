## course directory
# contains all the install info
# this would be the only data that needs to be up to date
course_directory <- data.frame(course_name = c("mbb343"), github_username = c("JuliaPhilipp"), branch = c("main"), description = c("Intro to R and data analysis"))


## list courses
#' list courses
#' This function will list all available BiocSwirl courses available for installation
#' @export
#' @example
#' list_courses()
list_courses <- function(){
  course_directory[,c("course_name","description")]
}

## load_course function
# add available courses to documentation as well

#' demo load course function
#' This function will load and install a the mbb343 course
#' @export
#' @example
#' load_course_demo()
load_course_demo <- function(){
  # test if course is installed already?

  # look up string in table to install appropriate course

  # install from github
  swirl::install_course_github(github_username = "JuliaPhilipp",
                               course_name = "mbb343",
                               branch = "main")

  # success message!
  print("course installed successfully")

  # open swirl immediately?
}

#' load all courses
#' This function will load and install a specificed BiocSwirl course for you
#' @param course options are 'mbb343' and 'rna_seq. More information on available courses via list_courses()
#' @export
#' @example
#' load_course('mbb343')

load_course <- function(course){
  # test if course is installed already?

  # check if course string is legit
  # issue warning if not

  # look up string in table to install appropriate course
  selected_course <- course_directory[which(course_directory$course_name == course),]

  # install from github
  swirl::install_course_github(github_username = selected_course$github_username,
                               course_name = selected_course$course_name,
                               branch = selected_course$branch)

  # success message!
  print(paste(course, "course installed successfully"))

  # open swirl immediately?
}


# load all available courses

#' load all courses
#' This function will load and install all available BiocSwirl courses for you
#' @export
#' @example
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
  print("all courses installed successfully!")
}


