#Table of contents. Here’s something for you to do in order to play around
#more with center, ljust, and rjust: write a program that will display a table of
#contents

line_width = 60
str1 = 'Chapter 1:  Getting started'
str2 = 'Chapter 2:  Numbers'
str3 = 'Chapter 3:  Letters'
str4 = 'page 1'
str5 = 'page 9'
str6 = 'page 13'


puts( 'Table of Contents'.center(line_width))
puts( str1.ljust(line_width/2) + str4.rjust(line_width/2))
puts( str2.ljust(line_width/2) + str5.rjust(line_width/2))
puts( str3.ljust(line_width/2) + str6.rjust(line_width/2))
