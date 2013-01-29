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


