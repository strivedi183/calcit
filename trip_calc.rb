def trip_calc
  puts "Welcome to the trip calculator."
  print "How far will you drive? (in miles) "
  distance = gets.chomp.to_f

  print "What is the fuel efficiency of the car? (mpg) "
  mpg = gets.chomp.to_f

  print "How much does gas cost per gallon? "
  cpg = gets.chomp.to_f

  print "How fast will you drive? (mph) "
  speed = gets.chomp.to_f

  #For every 1 mph over 60 mph, reduce the the mpg by 2 mpg.
  if speed > 60
    mpg  = mpg - 2
  end

  time = distance/speed

  money = distance * (1/mpg) * cpg

  puts "Your trip will take #{time.round(2)} hours and cost $#{money.round(2)}."
end