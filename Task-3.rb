class Ridham
  for i in 1..10 do
    if i>3 then
      redo
    end
    puts "#{i}"
  end
  nums = [[1,2],[2,3],[3,4],[4,5],[5,6]]
  nums.each do |num1, num2| print "What is #{num1} + #{num2}: " 
  redo unless gets.to_i == num1 + num2 
  end
end
