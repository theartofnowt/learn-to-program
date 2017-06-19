def englishNumber number
  if number < 0  # No negative numbers.
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'no more'
  end

  # No more special cases! No more returns!

  numString = ''  # This is the string we will return.

  onesPlace = ['one',     'two',       'three',    'four',     'five',
               'six',     'seven',     'eight',    'nine']
  tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
               'sixty',   'seventy',   'eighty',   'ninety']
  teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
               'sixteen', 'seventeen', 'eighteen', 'nineteen']

  # "left" is how much of the number we still have left to write out.
  # "write" is the part we are writing out right now.
  # write and left... get it?  :)
  left  = number

  # Each number grouping has a switch to show that it has been printed
  # This is then useful for

  #TRILLIONS
  write = left/1000000000000
  left = left - write*1000000000000

  if write > 0
    trillions_switch = true
    trillions  = englishNumber write
    numString = numString + trillions + ' trillion'
    if left > 0
      numString = numString + ' '
    end
  end


  #BILLIONS
  write = left/1000000000
  left = left - write*1000000000

  if write > 0
    billions_switch = true
    billions  = englishNumber write
    numString = numString + billions + ' billion'
    if left > 0
      numString = numString + ' '
    end
  end

  #MILLIONS
  write = left/1000000
  left = left - write*1000000

  if write > 0
    millions_switch = true
    millions  = englishNumber write
    numString = numString + millions + ' million'
    if left > 0
      numString = numString + ' '
    end
  end


  #THOUSANDS
  write = left/1000
  left = left - write*1000

  if write > 0
    thousands_switch = true
    thousands  = englishNumber write
    numString = numString + thousands + ' thousand'
    if left > 0
      numString = numString + ' '
    end
  end


  #HUNDREDS
  write = left/100          # How many hundreds left to write out?
  left  = left - write*100  # Subtract off those hundreds.

  if write > 0
    hundreds_switch = true
    # Now here's a really sly trick:
    hundreds  = englishNumber write
    numString = numString + hundreds + ' hundred'
    # That's called "recursion". So what did I just do?
    # I told this method to call itself, but with "write" instead of
    # "number". Remember that "write" is (at the moment) the number of
    # hundreds we have to write out. After we add "hundreds" to
    # "numString", we add the string ' hundred' after it.
    # So, for example, if we originally called englishNumber with
    # 1999 (so "number" = 1999), then at this point "write" would
    # be 19, and "left" would be 99. The laziest thing to do at this
    # point is to have englishNumber write out the 'nineteen' for us,
    # then we write out ' hundred', and then the rest of
    # englishNumber writes out 'ninety-nine'.

    if left > 0
      # So we don't write 'two hundredfifty-one'...
      numString = numString + ' '
    end
  end


  # TENS
  write = left/10          # How many tens left to write out?
  left  = left - write*10  # Subtract off those tens.

  if write > 0
    tens_switch = true
    if ((write == 1) and (left > 0))
      # Since we can't write "tenty-two" instead of "twelve",
      # we have to make a special exception for these.

      # Special condition for 'and' before teenagers.
      if (trillions_switch || billions_switch || millions_switch || thousands_switch || hundreds_switch)
        numString = numString + 'and ' + teenagers[left-1]
      else
        numString = numString + teenagers[left-1]
      end
      # The "-1" is because teenagers[3] is 'fourteen', not 'thirteen'.
      # Since we took care of the digit in the ones place already,
      # we have nothing left to write.
      left = 0
    else
      # Special condition for 'and' before tens.
      if (trillions_switch || billions_switch || millions_switch || thousands_switch || hundreds_switch)
        numString = numString + 'and ' + tensPlace[write-1]
      else
        numString = numString + tensPlace[write-1]
      end
      # The "-1" is because tensPlace[3] is 'forty', not 'thirty'.
    end

    if left > 0
      # So we don't write 'sixtyfour'...
      numString = numString + '-'
    end
  end

  #ONES
  write = left  # How many ones left to write out?
  left  = 0     # Subtract off those ones.

  if write > 0
    # Special condition for 'and'. If no tens then 'and' ones.
    if (trillions_switch || billions_switch || millions_switch || thousands_switch || hundreds_switch) and !tens_switch
      numString = numString + 'and ' + onesPlace[write-1]
    else
      numString = numString + onesPlace[write-1]
    end

    # The "-1" is because onesPlace[3] is 'four', not 'three'.
  end

  #RESET SWITCHES
  trillions_switch = false
  billions_switch = false
  millions_switch = false
  hundreds_switch = false
  tens_switch = false


  #RETURN ANSWER
  # Now we just return "numString"...
  numString
end








def print_beers
    beers = 999
    counter = beers

    while counter > 0
      puts englishNumber(counter) + " bottles of beer on the wall, " + englishNumber(counter) + " bottles of beer on the wall."
      counter -= 1
      puts "Take one down and pass it around, " + englishNumber(counter) + " bottles of beer on the wall."
      puts ' '
    end
    puts "No more bottles of beer on the wall, no more bottles of beer."
    puts "Go to the store and buy some more, #{beers} bottles of beer on the wall."
    puts ' '
end

print_beers
