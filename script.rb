def caesar_cipher(string, num) 
ord_array = []
ord_array_added = []
encrypted_array = []

string_array = string.downcase.chars

for i in string_array do
    ord_array.push(i.ord)
end
  
for i in ord_array do
    if i < 97
        ord_array_added.push(i)
    elsif (i >= 97) && (i <= 122)
        new_value = i + num
        new_value -= 26 if new_value > 122
        ord_array_added.push(new_value)
    end
 
end
p ord_array_added
for i in ord_array_added do
    if i < 97
      encrypted_array.push(i.chr)
    elsif (i >= 97) || (i <= 122)
    encrypted_array.push(i.chr)
    end
    
end
encrypted_array = encrypted_array.join('')
p encrypted_array
end

caesar_cipher("What a string!", 5)