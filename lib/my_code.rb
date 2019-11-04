# Your Code Here
def map(collection)
  new_array = []
  index = 0 
  while index < collection.length 
    new_array << yield(collection[index])
    index +=1 
    end 
  return new_array
end

def reduce(collection, starting_value = collection[0])
pp collection 


if starting_value != collection[0]
    value = starting_value
    index = 0
  else 
    value = collection[0]
    index = 1
end 
while index < collection.length
  value = yield(value, collection[index])
  p yield(value, collection[index])
  index +=1
end 
return value
end 

