company_age <- 9
curr_emp <- 180
leave_time <- 2
age_vec <- 1:company_age
beta <- 1
#then we can calculate employee churn per year as
expected_num_leave <- curr_emp/sum(1/age_vec^beta)*exp(-leave_time)*sum(leave_time^age_vec / (age_vec*factorial(age_vec)))

#from this we can get the expected leave time
expected_weeks <- 1/expected_num_leave*52

cat('we expect one employee to leave every ', expected_weeks, ' weeks \n')
