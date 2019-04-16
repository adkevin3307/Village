print("What file do you want to print: ")
path = gets.chomp

if File.file?(path)
    file.open(path, "r")
    for i in 0...10
        print(file.gets)
    end
    file.close
else
    puts("File does not exist.")
end