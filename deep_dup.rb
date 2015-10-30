def deep_dup(array)
  return array unless array.is_a?(Array)

  dup_array = array.map { |el| deep_dup(el) }
end
