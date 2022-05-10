def valid_num?(num)
  num.to_f.to_s == num || num.to_i.to_s == num
end

def strip_special(input)
  input.gsub!(/[$,%]/, '')
end

loan_amt = ""
apr = ""
loan_dur_mths = ""
loan_dur_year = ""
loan_format = ""

puts "---------Loan Calculator-------------"

loop do
  loop do
    puts "What is the total amount of your loan?: "
    loan_amt = gets.chomp

    strip_special(loan_amt)

    if valid_num?(loan_amt)
      break
    else
      puts "That's not a valid number."
    end
  end

  loop do
    puts "What is your annual percentage rate? (ex 5.5%): "
    apr = gets.chomp

    strip_special(apr)

    if valid_num?(apr)
      break
    else
      puts "Please enter a valid rate"
    end
  end

  # calculate  monthly interest
  mth_intrst = apr.to_f / (100 * 12)

  
  puts "Would you like the loan calculated in months,
        or years?: (1) Years, (2) Months"
  loop do
    loan_format = gets.chomp

    if loan_format == "1" || loan_format == "2"
      break
    else
      puts "Please enter (1) or (2)"
    end
  end

  loop do
    if loan_format == '1'
      puts "What is the loan duration in years?"
      loan_dur_year = gets.chomp
      loan_dur_mths = loan_dur_year * 12
    else
      puts "What is the loan duration in months?: "
      loan_dur_mths = gets.chomp
    end

    if valid_num?(loan_dur_mths)
      break
    else
      puts "Please enter a valid number"
    end
  end

  monthly_payment = loan_amt.to_f *
                    (mth_intrst / 
                    (1 - (1 + mth_intrst)**(-loan_dur_mths.to_i)))

  puts "Your monthy payment will be $#{monthly_payment.round(2)}.\n\n"
  puts "<< Would you like to try another calculation? ('Y' tt continue)"
  do_again = gets.chomp.downcase
  if do_again != 'y'
    puts "--------Closing Program-----------\n\n\n"
    break
  end
end
