array = [1,2,3,4,5,6,7]

selection = array.select do |a|
  a > 3 && a < 6
end

puts "#{selection}"