def map(x)
  new = []

  while i < x.length do
    new.push(yield (x[i]))
    i += 1
  end
  return new

end




def reduce(x, starting_point = nil)
  if starting_point
    i = 0
    var_x = starting_point
  else
    i = 1
    var_x = x[0]
  end

  while i < x.length do
    var_x = (yield(var_x, x[i]))
    i += 1
  end
  return var_x

end
