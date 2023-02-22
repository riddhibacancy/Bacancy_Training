class Ridham
  a = "A"
  b = "A"
  c = (a.eql?b)
  d = (a.equal?b)
  puts "#{c}" # it compare the value of variables
  puts "#{d}" #it compare the address of variables
  a = :a
  b = :a
  e = a.equal?b
  puts "#{e}" # For same value if we want to give same address to different variable then we use symbol variable.
end
