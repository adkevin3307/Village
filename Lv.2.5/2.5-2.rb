s = gets.chomp
result = "<table>\n"
counter = 1
while s != "END"
    result += "<tr><td>" + (counter.to_s) + "</td><td>" + s + "</td></tr>" + "\n"
    s = gets.chomp
    count += 1
end

result += "</table>" + "\n"
print(result)