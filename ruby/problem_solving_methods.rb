
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

#Method that takes a number of Fibonacci terms to generate and returns an array of the terms
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

  return arr #Returns array of numbers
  #Driver code that returns last number of array
  #return arr[n-1]
end

p fibonacci(6) #=>[0,1,1,2,3,5]

#Bubble sort psuedocode
#Given an array create 3 placeholders varuables
#One variable for current index, one for next index, and one temp
#Loop through array until end of array length
#Compare current index to next index
#Stores current index into placeholder
#Swap value of current index with value of next index if the current index is greater than the next index
#Swap value of next index with value of placeholder
#Loop ends when no current index is greater than next index
#Returns sorted array
def bubble_sort(arr)
  temp = 0

  arr.each do |i|
    i = 0
    j = 1
    while (j < arr.length)
      if arr[i] > arr[j] #Compare current index to next index
        temp = arr[i] #Stores current index into placeholder
        arr[i] = arr[j] #Swap value of current index with value of next index
        arr[j] = temp #Swap value of next index with value of placeholder
        #p arr #For debugging: shows each iteration and swap
      end
    i+=1
    j+=1
    end
  end  
 return arr
end

p bubble_sort([6, 3, 5, 3, 2, 9])
