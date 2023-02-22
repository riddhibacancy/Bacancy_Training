class Lasagna
MINOVEN = 40 
  def remaining_minutes_in_oven(min)
    remin = MINOVEN - min
    p "#{remin}"
  end
  
  def preparation_time_in_minutes(min)
    totmin = min * 2
    p "#{totmin}"
  end
  
  def total_time_in_minutes(layer, min)
    ttime = (layer*2)+min
    p "#{ttime}"
  end
end

lasagna = Lasagna.new
lasagna.remaining_minutes_in_oven(30)
lasagna.preparation_time_in_minutes(2)
lasagna.total_time_in_minutes(3, 20)
