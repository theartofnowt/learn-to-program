#Improved ask method. That ask method I showed you was OK, but I bet you
#could do better. Try to clean it up by removing the answer variable. You’ll
#have to use return to exit from the loop. (Well, it will get you out of the
#whole method, but it will get you out of the loop in the process.) How do
#you like the resulting method? I usually try to avoid using return (a personal
#preference), but I might make an exception here.

def ask question

  while true
    puts question # program wasn't working because i had ask instead of puts
    reply = gets.chomp.downcase
    if reply == 'yes'
      return true
    else if  reply == 'no' # i put elsif but resorted to else
      return false
    else
      puts 'Please answer \'yes\' or \'no\'.'
    end
  end
end
end



puts "Hello, thank you for..."
puts
ask "Do you like eating tacos..?"
ask "Do you like eating burritos?"
wet_bed = ask "do you wet the bed?"
ask 'Do you like eating chimichangas?'
ask 'Do you like eating sopapillas?'
puts 'Just a few more questions...'
ask 'Do you like drinking horchata?'
ask 'Do you like eating flautas?'

puts
puts 'DEBRIEFING'
puts 'Thank you for ...'
puts
puts wets_bed
