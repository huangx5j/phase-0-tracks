
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
