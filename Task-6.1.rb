class Main
  i=5
  for i in (5).downto(1) do
    j=1
    for j in j..i do
      print "* "
      j = j+1
    end
    i=i-1
    puts
  end
end
