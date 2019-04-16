if !ARGV.empty?
    path = ARGV[0].chomp
    if File.file?(path)
        file = open(path, "r")
        for i in 0...10
            print(file.gets)
        end
        file.close
    else
        puts("File does not exist.")
    end
else
    puts("Please give file path.")
end