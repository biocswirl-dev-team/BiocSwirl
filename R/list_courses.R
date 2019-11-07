#' @title Course list function
#'
#' @description This function lists all the course titles available.
#' @keywords course_list
#' @export
#' @examples
#' list_courses()

list_courses <- function(){
	url <- "https://api.github.com/repos/lisancao/biocswirl/git/trees/f401ca47303e16d67ff8c24f035c9e2b4e0a1598"
	get_url <- httr::GET(url)
	httr::stop_for_status(get_url)
	dirlist <- unlist(lapply(httr::content(get_url)$tree, "[", "path"), use.names = F)
	print(dirlist)
}
