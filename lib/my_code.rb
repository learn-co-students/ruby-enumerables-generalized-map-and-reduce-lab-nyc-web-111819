# Your Code Here
def map(source)
  i = 0
  array = []
  while i < source.size do
    array << yield(source[i])
    i += 1
  end
  array
end

def reduce(source, start = nil)
  i = 0
  if start
    total = start
  else
    total = source[0]
    i = 1
  end
  while i < source.size do
      total = yield(total, source[i])
    i += 1
  end
  total
end
