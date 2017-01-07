#write your code here

def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(numbers)
  numbers.inject(0){|sum,x| sum + x }
end

def multiply(*numbers)
  numbers.inject(1){|sum,x| sum * x }
end

def power(a, exp)
  a ** exp
end

def factorial(n)
  (1..n).inject(:*) || 1
end
