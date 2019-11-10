#' @title Install and open a course of choice
#'
#' @param course a course name, input as a string
#' @description This function installs and opens a course selected by the user.
#' @keywords install open
#' @export
#' @examples
#' install_course("scrna-seq")


##devtools::document()
install_course <- function(course){
  
  if(is.character(course)) {
    if (course == "scrna_seq") {
      
      url <- "https://github.com/lisancao/biocswirl/blob/master/biocswirl_package/courses/scrna_seq/lessons/low_level/low_level.yaml?raw=true"
      utils::download.file(url, destfile = "low_level.yaml")
      utils::download.file(url, destfile = "high_level.yaml")
      
      ### 2nd ###
      usethis::use_course("https://github.com/lisancao/biocswirl/archive/master.zip")
      
      
    }
    else {		
      print("Course does not exist. Please try again!")
    }
  }
  
  else {

    print("Argument 'course_name' must be surrounded by quotes!")
  }  
}
  

