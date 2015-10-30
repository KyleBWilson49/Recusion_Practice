def fibs_recurs(n)
  if n <= 2
    [1, 1].take(n)
  else
    array = fibs_recurs(n - 1)
    last = array[-1] + array[-2]
    array.push(last)
  end
end

def fibs_iterative(n)
  array = []
  (0...n).each do |num|
    if num <= 1
      array << 1
    else
      array << (array[-1] + array[-2])
    end
  end
  array
end
