def bubble_sort(input)

    finished = false
    until finished
        finished = true
        (input.length-1).times do |num|
            if input[num] > input[num + 1]
                finished = false
                temp = input[num]
                input[num] = input[num + 1]
                input[num + 1] = temp
            end
        end
    end
    input
end

l = [5, 4, 6, 7, 9, 10, 100, 2, 0]

puts bubble_sort(l)