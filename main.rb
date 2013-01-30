require 'rainbow'

puts "What would you like to do?".foreground(:red)
puts "Use (b)asic, (a)dvanced, (bm)i, (m)ortgage, (t)rip, (q)uit".background(:red).foreground(:green)
you = gets.chomp.downcase

def adv_calc
  print "Welcome to the Advanced Calculator. Would you like to take an nth (p)ower or the square (r)oot? "
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
    puts 'Error. Please enter "p" "pr" "r" to run the use the advanced calculator.'
  end
end

def basic_calc
  # User chooses math action and enters their numbers
  print "Would you like to add, subtract, multiply, or divide? "
  math_action = gets.chomp
  print "Please enter your first number: "
  first_number = gets.chomp.to_i
  print "Please enter your second number: "
  second_number = gets.chomp.to_f

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

def bmi_calc
  print "What is your weight? (lbs/kg) "
  weight = gets.chomp.to_f
  print "What is your height? (inches/meters) "
  height = gets.chomp.to_f
  puts "Your BMI is #{weight/(height*2)} (Press Enter key to continue)"
  gets
end

def mort_calc
  puts "Welcome to the mortage calculator."
  print "Please enter your loan principal. "
  loan_principal = gets.chomp.to_f
  print "Please enter your interest rate (monthly). "
  interest_rate = gets.chomp.to_f
  print "Please enter the number of payments. "
  num_payments = gets.chomp.to_f
  calc = (1 + interest_rate)**num_payments
  monthly_payment = loan_principal * ((interest_rate * calc) / (calc - 1))
  puts "Your monthly mortage payment is $#{monthly_payment.round(2)} (Press Enter key to continue)"
  gets
end

def trip_calc
  puts "This is a trip calculator."
  print "Please enter your distance (in miles) "
  distance = gets.chomp.to_f
  print "Please enter the Miles per gallon "
  mpg = gets.chomp.to_f
  print "Please enter the Cost per gallon "
  cpg = gets.chomp.to_f
  print "Please enter the mph "
  mph = gets.chomp.to_f

  if mph > 60
    mpg = mpg - (2 * (mph - 60))
  end

  trip_time = distance / mph

  trip_cost = (cpg / mpg) * distance

  puts "Your trip will take #{trip_time.round(2)} hours and cost $#{trip_cost.round(2)}."
end

while you != "q"
  if you == "b"
    basic_calc
  elsif you == "a"
    adv_calc
  elsif you == "bm"
    bmi_calc
  elsif you == "m"
    mort_calc
  elsif you == "t"
    trip_calc
  end
    puts "What would you like to do?".foreground(:green)
    puts "Use (b)asic, (a)dvanced, (bm)i, (m)ortgage, (t)rip, (q)uit".background(:red)
    you = gets.chomp.downcase
end

puts "Thank you"