# check which courses are installed
#' This function will list all the installed BiocSwirl courses
#' @export
#' @examples
#' \dontrun{
#' installed_courses()
#' }
installed_courses <- function(){
  if( length(list.files(path = swirl_courses_dir(), pattern = "^BiocSwirl_", ignore.case = FALSE)) > 0){
    gsub("BiocSwirl_","",list.files(path = swirl_courses_dir(), pattern = "^BiocSwirl_", ignore.case = FALSE))
  } else{
    message("No BiocSwirl courses are currently installed")
  }
}

# uninstall selected course
#' This function will uninstall a selected course
#' @export
#' @param course string identifying one of the installed BiocSwirl courses that should be uninstalled. check installed_courses().
#' @examples
#' \dontrun{
#' uninstall_course('RNAseq')
#' }

uninstall_course <- function(course){
  selected_course <- course_directory[which(course_directory$course_name == course),]

  full_course_path <- file.path(swirl_courses_dir(), selected_course$course_full)
  if(file.exists(full_course_path)){
    unlink(full_course_path, recursive=TRUE, force=TRUE)
    message(paste(course, "course uninstalled successfully!"))
  } else{
    stop("Course not found!")
  }
}

# uninstall all BiocSwirl courses
#' This function will uninstall all the installed BiocSwirl courses
#' @export
#' @examples
#' \dontrun{
#' uninstall_all_courses()
#' }

uninstall_all_courses <- function(){
  courses <- list.files(path = swirl_courses_dir(), pattern = "^BiocSwirl_", ignore.case = FALSE)
  for (i in 1:length(courses)){
    full_course_path <- file.path(swirl_courses_dir(), courses[i])
    unlink(full_course_path, recursive=TRUE, force=TRUE)
    message(paste(courses[i], "Course uninstalled successfully!"))
  }
}

