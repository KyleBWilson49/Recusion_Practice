def range(start, ending)
  return [] if start > ending

  [start] + range(start + 1, ending)
end
