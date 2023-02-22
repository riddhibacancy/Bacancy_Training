class Age
  require 'date'

  def age(dob)
    birthdate = dob
    now = DateTime.now
    age_in_years = now.year - birthdate.year
    age_in_months = now.month - birthdate.month
    age_in_days = now.day - birthdate.day
    age_in_hours = now.hour - birthdate.hour
    age_in_minutes = now.min - birthdate.min
    
    if age_in_minutes < 0
      age_in_hours -= 1
      age_in_minutes += 60
    end
    
    if age_in_hours < 0
      age_in_days -= 1
      age_in_hours += 24
    end

    if age_in_days < 0
      age_in_months -= 1
      last_month = now.next_month.prev_day
      age_in_days += (last_month.day - birthdate.day + now.day)
    end

    if age_in_months < 0
      age_in_years -= 1
      age_in_months += 12
    end

    puts "Age: #{age_in_years} years, #{age_in_months} months, #{age_in_days} days, #{age_in_hours} hours, #{age_in_minutes} minutes"
  end
end

o1 = Age.new
dob = DateTime.new(2001,11,15,12,1)
o1.age(dob)
