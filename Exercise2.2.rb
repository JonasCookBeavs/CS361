# Name Mangler

def reversed_name(name)
    split_name = name.split # Split the name into first and last in an array
    reversed_name_components = split_name.reverse # Reverse the array
    name = reversed_name_components.join(' ') # Rejoin the array
end

def borgified_name(name)
    name = reversed_name(name) << " Borg" # Add "Borg" to a reversed name
end

test_name = "Johanna Jackson"
puts "New name: #{reversed_name(test_name)}"
puts "New borg name: #{borgified_name(test_name)}"