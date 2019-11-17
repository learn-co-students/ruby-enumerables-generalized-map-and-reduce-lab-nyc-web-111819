  def map(source_array)
  new = []
  i = 0 
  while i < source_array.length 
        new.push(yield(source_array[i]))
  i += 1
end 
return new
end
 
def reduce(source_array, starting_point = 0)
  total = starting_point
  source_array.each do |num|
    total = yield(total, num)
  end 
  if total == 0 
    return true 
  end 
  return total 
end 