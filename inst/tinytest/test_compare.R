# user_f <- prepare(x + y, y = 10)
# 
# expect_equal(
# 	check(user_f, 1:5, 11:15, "mild"),
# 	FALSE
# )
# # do not compare classes of numeric
# expect_equal(
# 	compare(user_f, 1:5, 11:15, "easy"),
# 	TRUE
# )
