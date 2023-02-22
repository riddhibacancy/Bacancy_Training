phonebook = File.read("phonebook.txt")
hash = eval(phonebook)

valid_entry = -> (name, number) { !hash.has_key?(name) && !hash.has_value?(number) }

handle_error = Proc.new { |msg| puts "Error: #{msg}" }

puts "1. Find phone number by name"
puts "2. Add new entry"
puts "3. Delete entry"
puts "4. Exit"
	
choice = gets.chomp.to_i

while choice != 5
  case choice
  when 1
    proc = Proc.new{ puts "Enter name: "}
    proc.call
    name = gets.chomp
    if hash.has_key?(name)
      puts "Phone number: #{hash[name]}"
      break
    else
      puts "Name not found"
    end

  when 2
    puts "Enter name: "
    name = gets.chomp
    print "Enter phone number: "
    number = gets.chomp

    if valid_entry.call(name, number)
      hash[name] = number
      puts "Entry added"
      break
    else
      handle_error.call("Name or number already exists")
    end

  when 3
    puts "Please Select your Choice from below Option:"
    puts "1. Delete entry by name"
    puts "2. Delete entry by number"
    
    choice_for_delete = gets.chomp.to_i
    
    case choice_for_delete
    when 1
      print "Enter name: "
      name = gets.chomp
      if hash.has_key?(name)
        hash.delete(name)
        puts "Entry deleted"
        break
      else
        puts "Name not found"
      end
      
    when 2
      print "Enter number: "
      number = gets.chomp
      if hash.has_value?(number)
        key = hash.key(number)
        hash.delete(key)
        puts "Entry deleted"
        break
      else
        puts "Number not found"
      end
    else
      puts "Invalid Selection"
      break
    end
  else
    puts "Invalid choice"
    break
  end
end

File.open("phonebook.txt", "w") do |f|
  f.write(hash.to_s)
end
