array = [1,2,3,4,5]

new_array = array.map do |a|
  a * 2
end

puts "\nArray original:"
puts "#{array}"

puts "\nNovo Array:"
puts "#{new_array}"


array.map! do |a|
  a * 2
end

puts "\nArray original:"
puts "#{array}"