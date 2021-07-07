def map(array)
  index = 0
  new_array = []
  while index < array.count do
    new_array << yield(array[index])
    index += 1
  end
  new_array
end

def reduce(source_array, starting_point = nil)

  index = 0
  new_val = starting_point
  if starting_point == nil
    new_val = source_array[0]
    index = 1
  end

  while index < source_array.count do
    new_val = yield(new_val, source_array[index])
    index += 1
  end
  new_val
end
