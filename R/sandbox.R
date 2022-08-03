#' Gamify your R experience
#' 
#' @import rlang
#' @importFrom R6 R6Class
#' @importFrom cli cli_alert_success
#' @keywords internal
#' Problem solving skills are born through problem solving.
"_PACKAGE"

utils::globalVariables(
	c("I", # NSE, Input
		"O", # NSE, Output
		"R",
		"D", # NSE, Difficulty
		"G" # NSE, Givens
		) # NSE, Result
)

on_load(local_use_cli())
