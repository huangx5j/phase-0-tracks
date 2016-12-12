puts "How many employees?"
employees=gets.chomp().to_i

currentyear=2016
i=1 #iteration for employees

until employees ==0
  puts "Employee #{i}: What is your name?"
  name=gets.chomp()

  puts "Employee #{i}: How old are you?"
  age=gets.chomp().to_i

  puts "Employee #{i}: What year were you born?"
  birth=gets.chomp().to_i

  puts "Employee #{i}: Our company cafeteria serves garlic bread. Should we order some for you? y/n?"
  garlic=gets.chomp()

  puts "Employee #{i}: Would you like to enroll in the company’s health insurance? y/n"
  health=gets.chomp()

  if (age + birth == currentyear) || (age + birth - 1 == currentyear) 
    agecheck = true;
  else
    agecheck = false;
  end

  if garlic == "y" 
    garliccheck = true;
  else
    garliccheck = false;
  end

  if health == "y" 
    healthcheck = true;
  else
    healthcheck = false;
  end

  if agecheck && (garliccheck || healthcheck) 
    result = "Probably not a vampire."
  elsif !agecheck && (garliccheck || healthcheck) 
    result = "Probably a vampire."
  elsif !agecheck && !garliccheck && !healthcheck 
    result = "Employee #{i}: Almost certainly a vampire"
  else
    result = "Employee #{i}: Results inconclusive."
  end
  
  #if employee has a vampire name, overwrite result
  if name == "Drake Cula" || name == "Tu Fang" 
    result = "Em loyee #{i}:Definitely a vampire."
  end

  allergies = ""
  while allergies != "done"
    puts "Employee #{i}: Please list any allergies you may have. Type 'done' when finished."
    allergies = gets.chomp.downcase
    if allergies == "sunshine"
      result = "Employee #{i}:Probably a vampire."
      break 
    end
    if allergies == "done"
      break
    end
  end

  puts result
  employees -= 1
  i+=1
end
