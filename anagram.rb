def anagram(str1, str2)
  arr = Array.new(127, 0)
  str1.each_char do |char|
    arr[char.ord] += 1
  end
  str2.each_char do |char|
    arr[char.ord] -= 1
  end
  arr.count(0) == arr.length
end

puts 'Enter the number of times.'
count = gets.to_i

count.times do |val|
  puts 'Enter First String.'
  str1 = gets.strip.downcase
  puts 'Enter Second String.'
  str2 = gets.strip.downcase
  anagram(str1, str2) ? puts('Yes') : puts('No')
end