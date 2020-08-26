#shifts a single letter by the given factor, does not change non-letter characters
def shift(char, factor)
    n = char.ord
    min, max = 0
    if n.between?(65, 90)
        min = 65
        max = 90
    elsif n.between?(97, 122)
        min = 97
        max = 122
    else
        return char
    end

    n += factor
    while n > max
        n -= 26
    end
    while n < min
        n += 26
    end
    return n.chr
end

#iterates through each character in string and shifts it
def ceasar_cipher(message, factor)
    output = []
    message.split('').each{|char| output.push(shift(char, factor))}
    output.join('')
end

#user input
puts "Enter phrase:"
phrase = gets.chomp

puts "Enter shift factor:"
factor = gets.chomp.to_i

puts ceasar_cipher(phrase, factor)