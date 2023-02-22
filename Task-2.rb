class Calculator
  def calculator
    puts "This is our Calculator:"
    print "Please Enter first number:"
    @a = gets.to_i
    print "Please Enter Second number:"
    @b = gets.chomp.to_i
    print "Enter Operation Which you want to do on the numbers:"
    operation = gets.chomp
    case operation
    when '+'
      proc = Proc.new {@answer = @a + @b}
      proc.call
      puts "Your answer is #{@answer}"
    when '-'
      proc = Proc.new {@answer = @a - @b}
      proc.call
      puts "Your answer is #{@answer}" 
    when '*'
      proc = Proc.new {@answer = @a * @b}
      proc.call
      puts "Your answer is #{@answer}" 
    when '/'
      proc = Proc.new {@answer = @a / @b}
      proc.call
      puts "Your answer is #{@answer}"   
    end
  end
end

obj1 = Calculator.new
obj1.calculator
