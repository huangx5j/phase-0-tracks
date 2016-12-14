
# 5.6 Pairing
# Joseph Huang
# Brendan Schwarz

#Method that takes an array of integers and an integer to search for. The method should return the index of the item, or nil if the integer is not present in the array.
def search(arr, num)
  i = 0
  while i < arr.length 
    if arr[i] == num 
      return i 
    end
    i += 1
  end
  
  if arr.include?(num) == false 
    return nil
  end 
  
end

puts search([42, 89, 23, 0], 1) 

#Method to your file that takes a number of Fibonacci terms to generate and returns an array of the terms
def fibonacci(n) 
  arr = [0]
  n.times do |i|
    if i==0
      arr[i] = 0
    elsif i==1
      arr[i] = 1
    else
      arr[i] = arr[i-1] + arr[i-2]
    end  
  end

  return arr
end

print fibonacci(6) #=>[0,1,1,2,3,5]