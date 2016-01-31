puts "Name the first programming language designed with Developer Happiness in mind?"

answer = gets.chomp

if answer.downcase == 'ruby'
  puts "You are right"
else
  puts "#{answer} is not it, the answer is Ruby"
end

puts "Which is the most popular web framework for Ruby?"

answer = gets.chomp

if answer.downcase == 'rails'
  puts "You are right"
else
  puts "#{answer} is not it, the answer is Rails"
end
