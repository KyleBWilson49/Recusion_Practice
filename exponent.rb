def recursion1(number, exponent)
  return 1 if exponent == 0

  number * recursion1(number, exponent - 1)
end

def recursion2(number, exponent)
  return 1 if exponent == 0

  if exponent.even?
    result = recursion2(number, exponent / 2)
    result * result
  else
    exp = recursion2(number, (exponent - 1) / 2)
    number * exp * exp
  end
end
