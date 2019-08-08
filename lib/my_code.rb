def map(x)
  new = []

  while i < x.length do
    new.push( yield(x[i]))
    i += 1
  end
  return new

end
map([1, 2, 3, -9]){|n| n * -1})
