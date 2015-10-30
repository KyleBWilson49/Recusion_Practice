def bsearch(array, target)
  return nil if array.size == 0

  mid = array.size / 2

  if array[mid] == target
    return mid
  elsif array[mid] > target
    bsearch(array[0...mid], target)
  elsif array[mid] < target
    recursive_bsearch = bsearch(array[mid + 1..array.size], target)
    return nil if recursive_bsearch == nil
    mid + 1 + recursive_bsearch
  end
end
