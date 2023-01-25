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
  return nil if n < 0
  b * exp(b, n - 1)
end

class Array
  def self.dup(arr)

  end
end

def iter_fib(n)
  (0..n).inject { |sum, n| sum + n }
end

def rec_fib(n)
  return nil if n < 0
  return [0, 1].take(n) if n <= 2
  prev_row = rec_fib(n - 1)
  prev_row << prev_row[-1] + prev_row[-2]
end
