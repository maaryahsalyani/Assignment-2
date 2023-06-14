# Assignment-2
setwd("~/Desktop/coding_course")
#I have just set my working directory

three_digit <- as.numeric (readline(prompt = "enter a three digit positive number: "))

#I have prompted the user to enter a three digit positive number
# the readline function is used to read a line of text written by the user in the console

# ifelse statement to check if number is positive and three digits in the first condition 
if (three_digit > 0 && nchar(three_digit) == 3) { 
  print("Value is a three-digit positive number.")
} else { # if number is not positive and 3 digits, then provide an error message and quit the session
  print("Error..terminating session")
  quit()
}
