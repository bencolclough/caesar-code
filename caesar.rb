# caesar_cipher 

# ask for a string
puts "Enter message to be coded"
string = gets.chomp

# convert string to array
string_array = string.split("")

# ask for an offset
puts "Enter Offset 1 - 26"
offset = gets.chomp.to_i
if offset > 26
    puts "Enter Offset 1 - 26"
    offset = gets.chomp.to_i
end

# caesar_encrypt method to shift a letter a given amount of letters along in the alphabet
def caesar_shift(letter, offset)
    if (letter.ord < 97 && letter.ord > 65) || letter.ord < 65 || letter.ord > 122
        letter

    elsif 122 - letter.ord >= offset
        (letter.ord + offset).chr
    else 
        overhang = offset - (122 - letter.ord)
        (96 + overhang).chr    
    end   
end

# apply shift module to each character in the string and return to a new array, if a space then leave as is.
coded_array = string_array.map do |letter| 
    caesar_shift(letter,offset)
end

# convert new array back to string and print to screen
print coded_array.join