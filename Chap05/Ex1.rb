#Full name greeting. Write a program that asks for a person’s first name,
#then middle, and then last. Finally, it should greet the person using their
#full name.?

puts 'Hello, What\'s your full name?'

puts 'First name:?'
first_name = gets.chomp
puts 'Middle name:?'
middle_name = gets.chomp
puts 'Last name:?'
last_name = gets.chomp

puts "Your full name is, #{first_name} #{middle_name} #{last_name}?"
