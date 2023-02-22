
class User
  CITY = 'surat'
end


class Company < User
  def initialize(user, company)
    @user = user
    @company = company
    
  end
  def display_city()
    puts "The city of the #{@company} company is #{CITY} and user is #{@user}"
  end
end
obj1 = Company.new("Ridham", "Microsoft")
obj1.display_city

