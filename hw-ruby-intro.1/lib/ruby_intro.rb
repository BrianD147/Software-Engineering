# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length != 0
    arr.max(2).reduce(:+)
  else
    arr = 0
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  return false if arr.empty? && n.zero?
  arr.combination(2).any? {|a, b| a + b == n }
end

# Part 2
def hello(name)
  # YOUR CODE HERE
  "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  /^[b-df-hj-np-tv-z]/i.match(s) != nil
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s != "0"
    /^[10]*00$/.match(s) != nil
  else
    return true
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn
  attr_accessor :price

  def initialize(isbn, price)
    raise ArgumentError, 
			"Illegal argument" if isbn.empty?  or price <= 0
			
		@isbn = isbn
    @price = price
  end
  
  def price_as_string
		sprintf("$%2.2f", @price)
  end
end
