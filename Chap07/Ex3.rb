#Deaf grandma. Whatever you say to Grandma (whatever you type in), she
#should respond with this:
#HUH?! SPEAK UP, SONNY!
#£unless you shout it (type in all capitals). If you shout, she can hear you
#(or at least she thinks so) and yells back:
#NO, NOT SINCE 1938!
#To make your program really believable, have Grandma shout a different
#year each time, maybe any year at random between 1930 and 1950. (This
#part is optional and would be much easier if you read the section on Ruby’s
#random number generator on page 33.) You can’t stop talking to Grandma
#until you shout BYE.

# UPDATE VERSION, 

counter = 0
puts "grandma".downcase  +  ": hey loon, anything tae tell me!".upcase
while counter < 3
  answer = gets.chomp
  if answer == 'BYE'
    counter += 1
     if counter < 3
       puts "grandma".downcase + ": fa!".upcase
     end
  elsif answer == answer.upcase
    puts "grandma".downcase + ": aye! cannae mind, think his name was ... ach cannae remmy, ma mind has be odd since ".upcase + rand(1922..1956).to_s + "!"
  else
    puts "grandma".downcase + ": fa!".upcase
  end
end

puts "nae to forget ye shortbread!".upcase
