#4.6 Pairing
#Joseph Huang
#Jack Loftus

#global variable storing alphabet
$alph = "abcdefghijklmnopqrstuvwxyz"

def encrypt(str)
  i = 0
  nstr = ""
  while i < str.length
    #case when there are spaces
    if str[i] != " "
      aix = $alph.index(str[i])
      #case for letter z and wrap to a
      if aix + 1 >= $alph.length
        aix = -1
      end

      nstr = nstr + $alph[aix + 1]
    else
      nstr += " "
    end
    i += 1
  end
  return nstr
end

def decrypt(str)
  i = 0
  nstr = ""
  while i < str.length
    #case when there are spaces
    if str[i] != " "
      aix = $alph.index(str[i])
      #case for letter a and wrap to z
      if aix - 1 <= -1
        aix = $alph.length
      end
      nstr = nstr + $alph[aix - 1]
    else
      nstr += " "
    end
    i += 1
  end
  return nstr
end

#TEST CASES
#puts encrypt("abc") #should return "bcd"
#puts encrypt("zed") #should return "afe"
#puts decrypt("bcd") #should return "abc"
#puts decrypt("afe") #should return "zed"
#puts encrypt("hello worldz")
#puts decrypt(encrypt("hello worldz"))

#Our driver code
#ask user to decrypt or encrypt a password
puts "Would you like to encrypt or decrypt?"
op = gets.chomp
#loops prompt until user types encrypt or decrypt
while !(op == "encrypt" || op == "decrypt")
  puts "Please decide on 'encrypt' or 'decrypt'."
  op = gets.chomp
end

#ask user for password
puts "What is the password you would like to use?"
input = gets.chomp

#prints result to user
if op == "encrypt"
  puts "Encrypted: " + input + " => " + encrypt(input)
else
  puts "Decrypted: " + input + " => " + decrypt(input)
end