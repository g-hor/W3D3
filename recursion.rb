def range(start, last)
  # return start if last == start
  # arr = []
  # arr << start
  # (arr << range(start + 1, last)).flatten

  return [start] if last == start
  arr = []
  arr = [start] + range(start + 1, last)
end

def exp(b, n)
  return 1 if n == 0 
  return -n/(b * 1.0) if n < 0
  b * exp(b, n - 1)
end