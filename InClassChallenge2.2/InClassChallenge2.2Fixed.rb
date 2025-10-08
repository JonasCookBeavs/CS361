def countVowels(string)
    vowelCount = 0
    string.each_char do |x|
        if ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'].include?(x) 
        vowelCount += 1
        end
    end
    return vowelCount
end

def removeVowels(string)
    string.each_char do |x|
        if ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'].include?(x) 
            string.slice!(x)
        end
    end
    return string
end

str = "Its"
puts countVowels(str)
str <<= "whatever"
puts countVowels(str)
str = removeVowels(str)
puts countVowels(str)
str <<= "Therefore"
puts countVowels(str)
str = removeVowels(str)
puts countVowels(str)