#counts occurences of one substring
def count_substrings(phrase, word)
    word_length = word.length
    phrase_length = phrase.length - word_length

    count = 0

    phrase_length.times do |num|
        if word == phrase.slice(num...num+word_length)
            count += 1
        end
    end

    count
end


def substrings(phrase, dictionary)
    results = {}
    dictionary.uniq.each do |word| 
        word_count = count_substrings(phrase.upcase, word.upcase)
        if word_count > 0
            results[word] = word_count
        end
    end
    results
end

phr = "Howdy partner, sit down! How's it going?"
dict = ["below","down","go","going","horn","how","howdy","it","i","low", "low", "own","part","partner","sit"]

puts substrings(phr, dict)