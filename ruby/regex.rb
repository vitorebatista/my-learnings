value = 'ruby'
pos = /by/ =~ value
puts pos

phrase = 'Hello, how are you'
data = /how/.match(phrase)
puts data.pre_match
puts data.post_match

phone = '11 955532345a'
puts (/[0-9]{2} [0-9]{9}/).match(phone)
puts (/\d{2} \d{9}/).match(phone)