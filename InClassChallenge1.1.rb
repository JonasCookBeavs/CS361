def celcius(temp)
    cel = (temp-32) * 5.0/9.0
return cel
end

temps = [212,98.6,32,-40,-459]
for i in temps do puts celcius(i) end