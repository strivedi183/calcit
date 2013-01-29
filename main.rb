puts "What would you like to do?"
puts "Use Basic Calculator, Use Advanced Calculator, Quit?"
you = gets.chomp

def advcalc
  print "Welcome to the Advanced Calculator. Would you like to take an nth (p)ower or the square (r)oot?"
  answer = gets.chomp
  if answer == "p"
    puts "Let's take the nth power of a number."
    print "Please enter your number "
    number = gets.chomp.to_i
    print "Please enter your power "
    power = gets.chomp.to_i
    puts "The answer is #{number**power}."
  elsif answer == "r"
    puts "Let's take the square root of a number."
    print "Please enter your number "
    number = gets.chomp.to_i
    puts "The answer is #{number**(1.0/2)}."
  else
    puts 'Error. Please enter "p" pr "r" to run the use the advanced calculator.'
  end
end

def basic_calc
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
end

While you != "quit"
  # if you == "Basic Calculator"
  #   basic_calc
  # elsif you == "Advanced Calculator"
  #   advcalc
  # else
  #   puts "What would you like to do?"
  #   puts "Use Basic Calculator, Use Advanced Calculator, Quit?"
  #   you = gets.chomp
  # end
  puts "test"
  puts "What would you like to do?"
  puts "Use Basic Calculator, Use Advanced Calculator, Quit?"
  you = gets.chomp
end

puts "Test"
