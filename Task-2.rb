class Ridham
  i=1
  j=1
  for i in 1..5 do
    for j in 1..i do
      if j == 3
        next # next will terminate only current operation and it will go to the next operation of the loop.
      end
      print "#{j}"
      j+=1
    end
    puts
    if i==4
      break # break will terminate all the loop whenever condition is false and this loop will stop.
    end
  end
end
