# TODO give constraints to evaluation (time)

#' Check user input in a given context
#' @param expr an expression
#' @param id task id
#' @examples 
#' \dontrun{
#' check(x + y, 1)
#' }
#' @export
check <- function(expr, id) {
	get_meta(id) # import task items I, O & G
	expr <- substitute(expr)
	res <- wrap(expr, G)(I)
	isTRUE(all.equal(O, res))
	#comparison <- make_compare_call(D)
	#eval(comparison)
}

#' wrap user solution in a function
#' 
#' @param expr expression
#' @param G given constants
#' @keywords internal
wrap <- function(expr, G) {
	new_function(
		args = exprs(x=, !!!G),
		body = expr,
		env = baseenv() # clean environment without packages
	)
}
