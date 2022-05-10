require 'yaml'

'''Problem - Create a  basic calculator  
              The program should do the following:
                  1. Ask for two numbers
                  2. Perform the set operation chosen by the user:  add, subtract, multiply, divide
                  3. display the result 
              
                  # How are floats handled? -- should they be rounded at a particular decimal point or are we carrying the full float?
                  # Will the program end at the end of the first calculation? Or would you like to hold the calculated value to use
                    for subsequent calculations?

                  Mental model:  Take one number, an operator, and a 2nd number from the user and save them as a variabls.  User an if/else loop to perform a calculation
                  of the two numerical variables based on the operator given.

    Examples  -- ##Tests

    Data --   There will be 3 variables used
                  #1 = float
                  #2 = operator
                  #3 = float
              Result should be an int or float

    Algorithm 
              #1 num_1 = Get first number from the user 
              #2 operator = Get the operator from the user
              #3 num_2 = Get the 2nd number from the user

              If the operator is "+"
                 add num_1 + num_2
              if the operoator is "-"
                 subtract num_2 from num_1
              if the operator is "*"
                 mult num_1 * num_2
              if the operator is "/"
                 divide num_1 by num_2

              #4 return the calculation


    Code
 '''

 MESSAGES = YAML.load_file('calc_msg.yml')

def prompt(message)
 puts "=>#{message}"
end

def add(num1, num2)
  num1 + num2
end

def subt(num1, num2)
  num1 - num2
end

def mult(num1, num2)
  num1 * num2
end

def div(num1, num2)
  num1.to_f / num2.to_f
end

def valid_num?(num)
  num.to_f.to_s == num || num.to_i.to_s == num 
end

def operators_to_string(op)
  result = case op
           when '+'
             "Adding"
           when '-'
             "Subtracting"
           when '*'
             "Multiplying"
           when '/'
             "Dividing"
           end
result
end

num_1 = ''
num_2 = ''
operator = ''

puts MESSAGES['app_header']

loop do
  loop do
    prompt(MESSAGES['num_1_prompt'])
    num_1 = gets.chomp

    if valid_num?(num_1)
      break
    else
      prompt(MESSAGES['msg_error'])
    end
  end

  loop do
    operators = ["+", "-", "*", "/"]

    prompt(MESSAGES['op_prompt'])
    operator = gets.chomp

    if operators.include?(operator)
      break
    else
      prompt(MESSAGES['op_error'])
    end
  end

  loop do
    prompt(MESSAGES['num_2_prompt'])
    num_2 = gets.chomp

    if valid_num?(num_2)
      break
    else
      prompt(MESSAGES['msg_error'])
    end
  end

  puts "#{operators_to_string(operator)} the two numbers"

  result = case operator
           when "+"
             add(num_1.to_i, num_2.to_i)
           when "-"
             subt(num_1.to_i, num_2.to_i)
           when "*"
             mult(num_1.to_i, num_2.to_i)
           when "/"
             div(num_1.to_i, num_2.to_i)
           end

  puts "The result is #{result}"
  prompt(MESSAGES['repeat_msg'])
  continue = gets.chomp.upcase

  break unless continue == 'Y'
end
