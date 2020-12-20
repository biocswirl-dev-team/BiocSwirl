swirl_courses_dir <- function(){
  scd <- getOption("swirl_courses_dir")

  if(is.null(scd)){
    file.path(find.package("swirl"), "Courses")
  } else {
    scd
  }
}
