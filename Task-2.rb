read_array = proc do |array|
  File.read(array).scan(/\d+/).map(&:to_i)
end

count_frequency = lambda do |arr|
  freq = Hash.new(0)
  arr.each { |e| freq[e] += 1 }
  freq
end

output_results = lambda do |freq|
  output = {}
  freq.each do |k, v|
    if v > 1
      output[k] = v
    else
      File.open('output.txt', 'a') { |file| file.write("#{k}=>#{v} ") }
    end
  end
  puts output
end


arr = read_array.call('array.txt')

freq = count_frequency.call(arr)

output_results.call(freq)

