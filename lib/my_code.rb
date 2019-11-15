def map(array)
counter = 0 
new_array = []
  while counter < array.length 
  new_array[counter] = yield(array[counter])
  counter += 1
  end
return new_array
end

def reduce(array, starting_point = array[0])
counter = 0 
value = starting_point
if value == array[0]
  array.shift()
end
  while counter < array.length 
  value = yield(value, array[counter])
  counter += 1
  end
return value
end