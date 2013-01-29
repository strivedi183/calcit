def mort_calc
  puts "Welcome to the mortage calculator."
  print "Please enter your loan principal. "
  loan_principal = gets.chomp.to_f
  print "Please enter your interest rate. "
  interest_rate = gets.chomp.to_f
  print "Please enter the number of payments you have made. "
  num_payments = gets.chomp.to_f
  calc = (1 + interest_rate)**num_payments
  monthly_payment = loan_principal * ((interest_rate * calc) / (calc - 1))
  puts "Your monthly mortage payment is $#{monthly_payment.round(2)}"
end

