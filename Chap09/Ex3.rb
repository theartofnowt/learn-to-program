#modern roman numerals

def modern_roman number

m_numeral = 0
n900_numeral = 0
d_numeral = 0
n400_numeral = 0
c_numeral = 0
n90_numeral = 0
l_numeral = 0
n40_numeral = 0
x_numeral = 0
n9_numeral = 0
v_numeral = 0
n4_numeral = 0
i_numeral = 0

if number >= 1000
m_numeral = number/1000
number = number%1000
end

if number >= 900
n900_numeral = number/900
number = number%900
end

if number >= 500
d_numeral = number/500
number = number%500
end

if number >= 400
n400_numeral = number/400
number = number%400
end

if number >= 100
c_numeral = number/100
number = number%100
end

if number >= 90
n90_numeral = number/90
number = number%90
end

if number >= 50
l_numeral = number/50
number = number%50
end

if number >= 40
n40_numeral = number/40
number = number%40
end

if number >= 10
x_numeral = number/10
number = number%10
end

if number >= 9
n9_numeral = number/9
number = number%9
end

if number >= 5
v_numeral = number/5
number = number%5
end

if number >= 4
n4_numeral = number/4
number = number%4
end

if number < 4
i_numeral = number/1
number = number%10
end

puts 'M'*m_numeral + "CM"*n900_numeral + 'D'*d_numeral + 'CD'*n400_numeral + 'C'*c_numeral +
'XC'*n90_numeral + 'L'*l_numeral + 'XL'*n40_numeral + 'X'*x_numeral + 'IX'*n9_numeral +
'V'*v_numeral + 'IV'*n4_numeral + 'I'*i_numeral

end

x = ''
while x != 'plebs'
puts 'Enter a number to convert this to roman numerals.'
puts 'Type \'plebs\' to quit.'
x = gets.chomp.downcase
modern_roman x.to_i
end
