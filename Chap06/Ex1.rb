#Angry boss. Write an angry boss program that rudely asks what you want.
#Whatever you answer, the angry boss should yell it back to you and then
#fire you. For example, if you type in I want a raise, it should yell back like
#this:

puts 'Boss: Hey Loon, fa ye dean ma office?'

puts 'You:'
employee = gets.chomp
employee = employee.upcase + '!'

puts "Fa! Fit ye ane aboot a #{employee}, get oot ma office!"
