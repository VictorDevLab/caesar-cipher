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
        else
        ord_array_added.push(i+=num)
        end
end
p ord_array_added
for i in ord_array_added do
    if i < 97
      encrypted_array.push(i.chr)
    elsif (i >= 97) || (i <= 122)
    encrypted_array.push(i.chr)
    else 
        encrypted_array.push(i)
    end
end
encrypted_array = encrypted_array.join('')
p encrypted_array
end

caesar_cipher("Hello jacob!", 5)