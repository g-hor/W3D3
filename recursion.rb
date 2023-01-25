require 'byebug'

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

  def deep_dup
   return self.dup if self.none? { |ele| ele.is_a?(Array) }

   self.each do |ele|
    if ele.is_a?(Array)
      ele = ele.deep_dup
    end
   end  

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


def bsearch(arr, targ)
  # debugger
  return nil if arr.empty? 
  return arr.index(targ) if arr[0] == targ
  # debugger
  mid = (arr.length - 1) / 2
  return mid if arr[mid] == targ
  left = arr[0...mid]
  right = arr[mid + 1..-1]
  if targ > arr[mid]
    result = bsearch(right, targ)
    return nil if right.empty?
    return result + mid + 1 
  else
    bsearch(left, targ)
  end
end

# p bsearch([1,2,3,5],4)