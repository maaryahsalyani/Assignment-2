#assignment2

#the user will be asked to enter a 3 digit positive number
no_input <- readline(prompt = "Please enter a 3 digit positive number:")

#then the program will check if the number meets certain requirements
#this is where the outer if statement will start
if (is.numeric(as.numeric(no_input)) & #first it will check if the input is a number
    (as.numeric(no_input) %% 1 == 0) & #then it will check if it is a whole number without any decimals
    (((as.numeric(no_input) %/% 10) %/% 10) %/% 10) == 0) { #then it is going to check if it is a 3 digit number by getting rid of the right most digit 3 times

  # the code functions correctly to detect for a three digit numeric value

  #this is where the program will find out if the number is narcissistic, this is also where the inner if statement will be
split_no <- unlist(strsplit(as.character(no_input), "")) #the number will be split into a list and then using the unlist() function, it will be put into a vector instead
if( as.integer(split_no[1])^3 + as.integer(split_no[2])^3 + as.integer(split_no[3])^3 == no_input) { #this is the inner if statement
    print(paste(no_input, "is a narcissistic number")) #using the paste function, the original number which is stored in a variable will be used to announce whether or not the number is narcissistic
  } else { #this is the else condition for the  inner if statement
    print(paste(no_input, "is not a narcissistic number")) #same thing but if the conditions for a narcissistic number are not met
  }
} else { #this is the else condition for the outer if statement
  print("Entry is not valid. Terminating...") #the program will terminate if the original conditions for a 3 digit positive number input are not met.
}

# the inner if statement correctly calculates narcissistic numbers
# good job noting the inner and outter if statements
# It may be helpful to further explain what is being done in line 16
# I believe the session is supposed to quit if the input is not 3 numeric
# In this case, write the function quit() after the else condition for the outer statement

