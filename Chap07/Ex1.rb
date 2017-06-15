#99 bottles of beer on the wall, 99 bottles of beer.
#Take one down and pass it around, 98 bottles of beer on the wall.
#No more bottles of beer on the wall, no more bottles of beer.
#Go to the store and buy some more, 99 bottles of beer on the wall.

counter = 99

while  counter > 1
  puts counter.to_s + " bottles of beer on the wall, " + counter.to_s + " bottles of beer."
  counter -= 1
  puts "Take one down and pass it around, " + counter.to_s + " bottles of beer on the wall."
end

puts %"no more bottles of beer on the wall, no more bottles of beer."
puts "go to the store and buy some more, 99 bottles of beer on the wall."
