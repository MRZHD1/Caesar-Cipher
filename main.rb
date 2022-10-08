def caesar_cipher(string, shift)
    letters = ('a'..'z').to_a
    cap_letters = ('A'.. 'Z').to_a
    result = ''
    for letter in string.split('')
        unless letters.include?(letter) || cap_letters.include?(letter) # If it's a non-letter
            result += letter
        else
            if letter.upcase == letter
                result += cap_letters[(cap_letters.find_index(letter) + shift) % 26]
            else
                result += letters[(letters.find_index(letter) + shift) % 26]
            end
        end
    end
    return result
end

caesar_cipher("What a string!", 5)