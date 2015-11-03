# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.reduce(0) { |memo, x| memo + x }
end

# Define a method max_2_sum(array) which takes an array of integers as an 
#argument and returns the sum of its two largest elements. For an empty array 
#it should return zero. For an array with just one element, it should return that element.
def max_2_sum arr
  sorted_array = arr.sort { |a, b| b <=> a }
  sorted_array.slice(0, 2).reduce(0) { |memo, x| memo + x }
end

# Define a method sum_to_n?(array, n) that takes an array of integers and an 
#additional integer, n, as arguments and returns true if any two elements in 
#the array of integers sum to n. An empty array should sum to zero by definition.
def sum_to_n? arr, n
  arr.each_with_index { |first, i1|
    arr.each_with_index { |sec, i2|
      return true if first + sec == n && i1 != i2
    }
  }
  return false
end


# Part 2

# Define a method hello(name) that takes a string representing a name and 
# returns the string "Hello, " concatenated with the name.
def hello(name)
  return "Hello, #{name}"
end


#Define a method starts_with_consonant?(s) that takes a string and returns true 
#if it starts with a consonant and false otherwise. (For our purposes, a 
#consonant is any letter other than A, E, I, O, U.) NOTE: be sure it works for 
#both upper and lower case and for nonletters!
def starts_with_consonant? s
  s !~ /^[AEIOU]/i && s =~ /^\w/i
end

#Define a method binary_multiple_of_4?(s) that takes a string and returns true 
#if the string represents a binary number that is a multiple of 4. 
#NOTE: be sure it returns false if the string is not a valid binary number!
def binary_multiple_of_4? s
  decimal = s.to_i(10)
  if (decimal == 0)
    return decimal.to_s(2).eql?(s)
  else
    return decimal % 4 == 0
  end
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    @isbn = isbn
    @price = price
    raise ArgumentError if isbn.empty?
    raise ArgumentError if price <= 0
  end
  
  attr_accessor :isbn, :price
  
  def price_as_string
    "$#{sprintf("%3.02f",@price)}"
  end
end
