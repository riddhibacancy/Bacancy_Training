class Ridham
  a = false
  b = true
  c = a && b
  d = b and a
  e = (b and a)
  puts "#{c}" # Here && has the highest precedence
  puts "#{b and a}"
  puts "#{d}" # Here and has lowest precedence so in d first assign the value of b because "=" operator has higher precedence than "and".
  puts "#{e}" # Here "()" operator has higher precedence than "=" so first the operation done which is in the bracket and then the value of it will assign to the e.
end
