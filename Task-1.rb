class Hash
  def get_name
    puts "Enter the string in which you want to find the occurance of characters"
    str = gets.chomp
    calculate_character_occurance(str)
  end
  def calculate_character_occurance(string)
    @hash = {}
    string.each_char do |char|
      if @hash[char.to_sym]
        @hash[char.to_sym] += 1
      else
        @hash[char.to_sym] = 1
      end
    end
    puts @hash
  end
end

obj1 = Hash.new
obj1.get_name


