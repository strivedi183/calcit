puts "This is a trip calculator."
print "Please enter your distance (in miles) "
distance = gets.chomp.to_f
print "Please enter the Miles per gallon "
mpg = gets.chomp.to_f
print "Please enter the Cost per gallon "
cpg = gets.chomp.to_f
print "Please enter the mph "
mph = gets.chomp.to_f

def trip_time_calc (distance, mph)
  distance / mph
end

def trip_cost_calc (cpg, mpg, distance)
  (cpg / mpg) * distance
end

if mph > 60
  mpg = mpg - (2 * (mph - 60))
end

trip_time = trip_time_calc(distance, mph)

trip_cost = trip_cost_calc(cpg, mpg, distance)

puts "Your trip will take #{trip_time.round(2)} hours and cost $#{trip_cost.round(2)}."