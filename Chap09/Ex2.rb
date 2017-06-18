#Old-school Roman numerals. In the early days of Roman numerals, the
#Romans didn’t bother with any of this new-fangled subtraction “IX”
#nonsense. No sir, it was straight addition, biggest to littlest—so 9 was
#written “VIIII,” and so on. Write a method that when passed an integer
#between 1 and 3000 (or so) returns a string containing the proper old-
#school Roman numeral. In other words, old_roman_numeral 4 should return
#'IIII'. Make sure to test your method on a bunch of different numbers. Hint:
#Use the integer division and modulus methods on page 32.
#For reference, these are the values of the letters used:
#I = 1 V = 5 X = 10 L = 50
#C = 100 D = 500 M = 1000

def old_roman number

m_ = 0
d_numeral = 0
c_numeral = 0
l_numeral = 0
x_numeral = 0
v_numeral = 0
i_numeral = 0

if number >= 1000
m_numeral = number / 1000
number = number % 1000
end

if number >= 500
d_numeral = number / 500
number = number % 500
end

if number >= 100
c_numeral = number / 100
number = number % 100
end

if number >= 50
l_numeral = number / 50
number = number % 50
end

if number >= 10
x_numeral = number / 10
number = number % 10
end

if number >= 5
v_numeral = number / 5
number = number % 5
end

if number < 5
i_numeral = number / 1
number = number % 10
end

puts 'M'*m_numeral + 'D'*d_numeral + 'C'*c_numeral + 'L'*l_numeral + 'X'*x_numeral +
'V'*v_numeral + 'I'*i_numeral

end

old_roman 2017









#1 = 'I'
#5 = 'V'
#10 = 'X'
#50 = 'L'
#100 = 'C'
#400 = 'D'
#1000 = 'M'
