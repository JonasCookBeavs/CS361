sequence = [4, 2, 16, 5, 19, 5, 6, 2, 3, 5, 15, 4, 6, 10, 13, 1, 18, 6, 9, 10, 9,
12, 6, 9, 11, 18, 16, 18, 4, 9, 15, 7, 20, 12, 1, 4, 20, 17, 6, 12, 20,
19, 13, 10, 10, 7, 8, 2, 18, 20, 1, 7, 17, 3, 8, 10, 7, 1, 15, 7, 3, 13,
14, 12, 19, 13, 7, 17, 2, 14, 3, 17, 5, 12, 16, 6, 10, 15, 8, 2, 7, 1,
18, 16, 17, 12, 7, 14, 10, 17, 12, 19, 2, 20, 16, 7, 20, 16, 5, 7]

#step 1
def sumOfSequence(sequence)
    sum = 0
    index = 0
    while index < sequence.length
        sum = sum + sequence[index]
        index = index + 1
    end
    return sum
end

#step 2
def averageOfSequence(sequence)
    sum = 0
    totalItems = 0     
    index = 0
    while index < sequence.length
        sum = sum + sequence[index]
        totalItems = totalItems + 1
        index = index + 1
    end
    return sum.to_f / totalItems
end

#step 3
def totalOddNumbers(sequence)
    total = 0
    index = 0
    while index < sequence.length
        if sequence[index] % 2 == 1
            total = total + 1
        end
        index = index + 1
    end
    return total
end

#step 4
def totalRepeatingOdds(sequence)
    total = 0
    index = 0
    while index < sequence.length - 1
        if sequence[index] % 2 == 1 && sequence[index + 1] % 2 == 1
            total = total + 1
        end
        index = index + 1
    end
    return total
end

puts sumOfSequence(sequence) + averageOfSequence(sequence) + totalOddNumbers(sequence) + totalRepeatingOdds(sequence)
puts sumOfSequence(sequence)
puts averageOfSequence(sequence)
puts totalOddNumbers(sequence)
puts totalRepeatingOdds(sequence)