# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  x = arr.length
  a = 0
  if arr.empty?
    return a
  end
  arr.each {|b| a += b}
  return a
end

def max_2_sum arr
  # YOUR CODE HERE
  x = arr.length
  a = 0
  if arr.empty?
    return a
  end
  if x == 1
    return arr[0]
  end
  modArr = arr.sort
  a = modArr[-1] + modArr[-2]
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  exist = false
  x = arr.length
  if arr.empty?
    return exist
  elsif x == 1
    return exist
  end
  modArr = arr.permutation(2)
  modArr.each { |perm| exist = true if perm[0] + perm[1] == n }
  return exist
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  str = "Hello, " + name
  return str
end

def starts_with_consonant? s
  # YOUR CODE HERE
  lower = s.downcase
  starts = true
  if lower.empty?
    return false
  end
  if lower.start_with?('a')
    starts = false
  end
  if lower.start_with?('e')
    starts = false
  end
  if lower.start_with?('i')
    starts = false
  end
  if lower.start_with?('o')
    starts = false
  end
  if lower.start_with?('u')
    starts = false
  end
  check = (lower[0] =~ /[[:alpha:]]/)
  if check != 0
    starts = false
  end
  return starts
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.empty?
    return false
  end
  x = s.size
  for i in 0..x do
    check = (s[i] =~ /[[:alpha:]]/)
    if check == 0
      return false
    end
  end
  num = s.to_i(2)
  if num % 4 == 0
    return true
  end
  return false
end

# Part 3

class BookInStock
# YOUR CODE HERE
@isbn = ''
@price = 0.0
  def initialize(isbn, price)
    if isbn.empty?
      raise ArgumentError, 'ISBN is empty.'
    end
    if price.to_f <= 0
      raise ArgumentError, 'Price is less than or equal to zero.'
    end
    @isbn = isbn
    @price = price.to_f
  end
  def price_as_string
    price = @price.to_s
    priceString ="$" + "%0.2f" % price
    return priceString
  end
end
