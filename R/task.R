
#' @noRd
generate_task_list <- function() {
	R6::R6Class(
		portable = FALSE,
		class = FALSE,
		cloneable = FALSE,
		private = list(
			t = list() # task list
		),
		public = list(
			initialize = \(...) t <<- list(...),
			add = \(id, ...) t[[id]] <<- list(...),
			print = \() t,
			get = \(id, item = NULL) if(!is.null(item)) t[[id]][[item]] else t[[id]],
			rm = \(id) if(length(t)) t[[id]] <<- NULL
		)
	)$new()
}

# convenience functions
get_meta <- function(id) {
	context <- TASK_LIST$get(id) 
	context %||% stop("Invalid task id", call. = F)
	list2env(context, rlang::caller_env())
}
get_id <- function(id) TASK_LIST$get(id)
get_input <- function(id) TASK_LIST$get(id, "I")
get_output <- function(id) TASK_LIST$get(id, "O")
get_difficulty <- function(id) TASK_LIST$get(id, "D")
get_givens <- function(id) TASK_LIST$get(id, "G")
