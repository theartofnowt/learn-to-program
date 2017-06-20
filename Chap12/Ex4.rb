# Birthdaysday finder

File.open '/Users/michaelbrown/Projects/learn-to-program/Chap12/birthdays.txt'

 bdays = {}

 File.read('birthdays.txt').each_line do |line|
   line = line.chomp
   person, date, year = line.split(',')
   bdays[person] = date, year
 end


 puts "Whose bday do you want to know?"
 person = gets.chomp
 bday = bdays[person]

 puts bday
