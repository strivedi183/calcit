# User chooses math action and enters their numbers
print "Would you like to add, subtract, multiply, or divide? "
math_action = gets.chomp
print "Please enter your first number: "
first_number = gets.chomp.to_i
print "Please enter your second number: "
second_number = gets.chomp.to_i

#This is where the numbers have math actions done against them
case math_action
  when "add"
    puts "The answer is #{first_number + second_number}"
  when "subtract"
    puts "The answer is #{first_number - second_number}"
  when "multiply"
    puts "The answer is #{first_number * second_number}"
  when "divide"
    puts "The answer is #{first_number / second_number}"
  else
    print "error"
end