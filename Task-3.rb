class DateAndRange
  require 'date'

  def check_date(start_year, end_year, date_str)
    date = DateTime.parse(date_str)

    start_date = DateTime.new(start_year, 1, 1)
    end_date = DateTime.new(end_year, 1, 1)

    if (start_date..end_date)===date
      puts "Yes, #{date.strftime('%d-%m-%Y')} is between #{start_date.strftime('%d-%m-%Y')} to #{end_date.strftime('%d-%m-%Y')}"
    else
      puts "No, #{date.strftime('%d-%m-%Y')} is not between #{start_date.strftime('%d-%m-%Y')} to #{end_date.strftime('%d-%m-%Y')}"
    end
  end
end

obj1 = DateAndRange.new
obj1.check_date(2010, 2020, "Tue, 10 Aug 2010")
