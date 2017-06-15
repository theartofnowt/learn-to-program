#Bigger, better favorite number. Write a program that asks for a person’s
#favorite number. Have your program add 1 to the number, and then
#suggest the result as a bigger and better favorite number. (Do be tactful
#about it, though.)

puts 'What\'s your favourtie number?'
favourite_number = gets.chomp
favourite_number = favourite_number.to_i + 1

puts "This is now your BIGGER favourite number #{favourite_number}!"
