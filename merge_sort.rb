class Array
  def merge_sort
    return self if count < 2

    middle = count / 2

    left, right = self.take(middle), self.drop(middle)
    left_sorted, right_sorted = left.merge_sort, right.merge_sort

    merge(left_sorted, right_sorted)
  end

  def merge(left, right)
    merge_array = []
    until left.empty? || right.empty?
      merge_array << ((left.first < right.first) ? left.shift : right.shift)
    end

    merge_array + left + right
  end
end
