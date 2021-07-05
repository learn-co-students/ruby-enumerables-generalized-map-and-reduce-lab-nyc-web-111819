def map(array, block):
  new_array = []
  count = 0
  while count < array.length
    new_array[count] = block(array[count])
    count = count+1 
  new_array
    