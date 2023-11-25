def caesar_cipher(string, num) 
ord_array = []
ord_array_added = []
encrypted_array = []
#to downcase to use it easily
string_array = string.downcase.chars
# loop through the string_array to convert all the charactres to ordinal digits
for i in string_array do
    ord_array.push(i.ord)
end
# loop thr the ord_array to shift the ordinals by num and push them to a new array(ord_array_added).
for i in ord_array do
    if i < 97
        ord_array_added.push(i)
    elsif (i >= 97) && (i <= 122)
        new_value = i + num
        #!! special case} if the value is more than 122, 
        #it subtracts it by 26, wrapping from 122 - 98 in that manner
        new_value -= 26 if new_value > 122
        ord_array_added.push(new_value)
    end
 
end
# looping through the final shifted array (ord_array_added)
# to convert all ordinals to characters
for i in ord_array_added do
    encrypted_array.push(i.chr)
end
encrypted_array = encrypted_array.join('')
p encrypted_array
end

caesar_cipher("What a string!", 5)