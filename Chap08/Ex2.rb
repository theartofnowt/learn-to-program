#Table of contents, revisited. Rewrite your table of contents program on
#page 32. Start the program with an array holding all of the information
#for your table of contents (chapter names, page numbers, and so on).
#Then print out the information from the array in a beautifully formatted
#table of contents.

tableOfContents = ['Table of Contents', 'Chapter 1: Getting Started', 'page 1','Chapter 2: Numbers','page 9',
'Chapter 3: Letters','page 13']
line_width = 60

puts (tableOfContents[0].center(line_width))
puts
puts (tableOfContents[1].ljust(line_width/2) + tableOfContents[2].rjust(line_width/2))
puts (tableOfContents[3].ljust(line_width/2) + tableOfContents[4].rjust(line_width/2))
puts (tableOfContents[5].ljust(line_width/2) + tableOfContents[6].rjust(line_width/2))
