#recursive_sort

def recursive_sort(unsorted_array, sorted_array = [])
  return sorted_array unless unsorted_array.length > 0
  smallest = unsorted_array.min
  unsorted_array.each {|e| sorted_array << e if e == smallest}
  unsorted_array.delete(smallest)
  recursive_sort(unsorted_array, sorted_array)
end


unsorted_array = ['Peter', 'Pepper,' 'Potter', 'Patricia', 'Petra']
puts recursive_sort unsorted_array

#by giving the second argument of recursive_sort (sorted_value) a default value of [] (an empty array).
#sorted_array is returned if sorting is finished (same as return sorted_array if unsorted_array.length == 0)
#use the Enumerable#min to find the smallest in unsorted_array to sorted_array.
#delete all instances of smallest in unsorted_array
#call the same method again, to remove the next smallest unsorted item etc
