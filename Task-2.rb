class SavingAccount

  def interest_rate(balance)
    if balance<1000 && balance>0 then
      @irate = 0.5
      p "#{@irate}"
    elsif balance>=1000 && balance<5000 then
      @irate = 1.621
      p "#{@irate}"
    elsif balance>=5000 then
      @irate = 2.475
      p "#{@irate}"
    else
      @irate = 3.213
      p "#{@irate}"
    end
  end
  
  def annual_balance_update(balance)
    interest = (balance*@irate)/100
    fbalance = balance + interest
    p "#{fbalance}"
  end
  
  def years_before_desired_balance(balance, inrate)
    intrate = inrate-balance
    years = (intrate*100)/(balance*@irate)
    p years.to_i
  end
end

saving = SavingAccount.new
saving.interest_rate(200.75)
saving.annual_balance_update(200.75)
saving.years_before_desired_balance(200.75, 214.88)
