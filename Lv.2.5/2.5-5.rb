require 'optparse'

def content(input, output)
    if File.file?(input)
        inputFile = open(input, "r")
        outputFile = open(output, "w") if output != nil
        for i in 0...10
            outputFile != nil ? outputFile.print(inputFile.gets) : print(inputFile.gets)
        end
        inputFile.close
        outputFile.close if outputFile != nil
    else
        puts("Input file does not exist.")
    end
end

options = {}
option_parser = OptionParser.new do |opts|
    opts.banner = 'Usage: example.rb [options]'
    opts.on('-s PATH', '--saveto PATH', 'Output File Path') do |value|
        options[:outputPath] = value
    end
end.parse!

if !ARGV.empty?
    inputPath = ARGV[0].chomp
    content(inputPath, options[:outputPath])
else
    puts('Please give input file')
end