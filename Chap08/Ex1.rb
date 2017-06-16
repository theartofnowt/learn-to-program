#Building and sorting an array. Write the program we talked about at the
#beginning of this chapter, one that asks us to type as many words as we
#want (one word per line, continuing until we just press Enter on an
#empty line) and then repeats the words back to us in alphabetical order.
#Make sure to test your program thoroughly; for example, does hitting
#Enter on an empty line always exit your program? Even on the first line?
#And the second? Hint: There’s a lovely array method that will give you a
#sorted version of an array: sort. Use it!

puts 'Type in the words you fancy, then press Enter on an empty line.'

#array for the input
array = []
input = "0"

#taking all the input and now pushing it into the array, i had to look this up online, finding it diffuclt to a solution
while input != ""
  input = gets.chomp
  array.push input
end

 puts 'wow, everything is in order!'
 puts array.sort
