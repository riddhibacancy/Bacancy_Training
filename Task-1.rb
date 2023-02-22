module Bank
  class Account
    attr_accessor :balance
    def initialize(balance)
      @balance = balance
    end
    def deposit
      print "Enter the amount that you want to deposit:"
      deposite = gets.to_i
      @balance = @balance + deposite
      puts "Now Your balance is #{@balance}."
    end
    def withdraw
      print "Enter the amount that you want to withdraw:"
      withdraw = gets.to_i
      @balance = @balance - withdraw
      puts "Now Your balance is #{@balance}."
    end
  end
  
  class Atm
    def initialize(obj_of_account)
      @atm = obj_of_account
    end
    def start
      print "Enter Your Pin to start:"
      @pin = gets.chomp.to_i
      if @pin == 1234 then
        show_options
      else
        puts "Wrong Pin Enter Correct Pin"
        start
      end
    end
    def show_options
      puts "Select Option if you want to show your balance then press 1
      For Deposit press 2
      For Withdraw press 3"
      input = gets.chomp
      case input
      when '1'
        puts @atm.balance
      when '2'
      	proc = Proc.new {@atm.deposit}
      	proc.call
      when '3'
        lambda = lambda{return "this is lambda"}
        lambda.call
      	@atm.withdraw
      end
    end
  end
  ac1 = Account.new 30000
  atm= Atm.new(ac1)
  atm.start
end
