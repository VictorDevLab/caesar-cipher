def caesar_cipher(string, num) 
ord_array = []
ord_array_added = []
encrypted_array = []

string_array = string.downcase.chars

for i in string_array do
    ord_array.push(i.ord)
end

for i in ord_array do
   ord_array_added.push(i+=num)
end
p ord_array_added
end

caesar_cipher("hello", 5)