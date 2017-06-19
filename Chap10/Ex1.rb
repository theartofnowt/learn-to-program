#sorting array


def sort array
  return array if array.length <= 1

  middle = array.pop #removes
  less = array.select{|x| x < middle}
  more = array.select{|x| x >= middle}

  sort(less) + [middle] + sort(more)
end

p(sort(['can', 'feel', 'singing', 'like', 'a', 'can']))
