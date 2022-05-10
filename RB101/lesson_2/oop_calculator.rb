class Calculator

  def initialize
    num_1 = 0
  end

  def get_input
    q1 = puts "Enter your first number ('C' to exit anytime): "
    num_1 = gets.chomp.to_i
    puts "Enter + , - , * , / "
    operator = gets.chomp
    puts "Enter your second number"
    num_2 = gets.chomp.to_i
  
  

    case 
    when operator == "+"
      puts add(num_1, num_2)
    when operator == "-"
      puts subtract(num_1, num_2)
    when operator == "*"
      puts multiply(num_1, num_2)
    when operator == "/"
      puts divide(num_1, num_2)
    end
  end

  def add(num1,num2)
    sum = num1 + num2
  end

  def subtract(num1,num2)
    difference = num1 - num2
  end

  def multiply(num1, num2)
    product = num1 * num2
  end

  def divide(num1, num2)
    quotient  = (num1 / num2).to_f
  end

  

end



calculator = Calculator.new




calculator.get_input

