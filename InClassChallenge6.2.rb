array = [22, 34, 22, 7, 13, 16, 8, 28, 7, 14, 13, 40, 20, 10, 12, 37,
  35, 32, 7, 35, 6, 29, 26, 6, 29, 23, 12, 26, 11, 23, 9, 27, 38, 16,
  27, 28, 22, 12, 15, 10, 9, 7, 25, 28, 6, 37, 22, 35, 36, 37, 18, 9,
  20, 39, 32, 13, 7, 11, 38, 36, 23, 28, 24, 21, 8, 7, 26, 5, 40, 6, 15,
  18, 31, 9, 13, 12, 38, 35, 30, 35, 31, 7, 35, 19, 38, 36, 16, 39, 27,
  11, 24, 6, 13, 30, 15, 34]

def filter_duplicates(array)

  filtered_array = []
  array.each do |num|
    if !filtered_array.include? num
      filtered_array << num
    end
  end
  
  filtered_array.sort()

end

p filter_duplicates(array)