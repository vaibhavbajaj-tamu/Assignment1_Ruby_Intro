# frozen_string_literal: true

# Part 1

def sum(arr)
  # YOUR CODE HERE
  total = 0
  for i in arr
    total = total + i
  end
  return total
end

def max_2_sum(arr)
  # YOUR CODE HERE
  total = 0
  if arr.length > 1
    max_terms = arr.max(2)
    total = max_terms[0] + max_terms[1]
  elsif arr.length > 0
    total = arr[0]
  else
    total = 0
  end
  
  return total  
end

def sum_to_n?(arr, number)
  # YOUR CODE HERE
  for i in 0...arr.length
    for j in i+1...arr.length
      if(arr[i]+arr[j] == number)
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  greeting = "Hello, "+name
  return greeting
end

def starts_with_consonant?(string)
  # YOUR CODE HERE
  result = /\A[[^aeiou]&&a-z]/i.match?(string)
  return result
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
  string = string.delete(" ")
  if /[^0-1]/i.match?(string)
    return false
  else
    dec_num = 0
    for i in 0...(string.length)
      dec_num = dec_num + string[i].to_i*(2**(string.length-i-1))
    end
    if dec_num.modulo(4) == 0 && string.length != 0
      return true
    else
      return false
    end
  end
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
  
  def initialize(isbn, price)
    
    if (price <= 0 || isbn.empty?)
      raise ArgumentError 
    end
    
    @isbn = isbn
    @price = price
    
    
  end
  
  def isbn
    @isbn
  end
  
  def price
    @price
  end
  
  def isbn=(code)
    @isbn = code
  end
  
  def price=(p)
    @price = p
  end
  
  def price_as_string()
    formatted_price = "$%0.2f" %[@price]
    return formatted_price
  end
  
  
end


