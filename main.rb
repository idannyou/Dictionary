require_relative 'dictionary.rb'

#Please replace 'input.txt' with the input file of your choice, or simply copy
#and paste your input commands into 'input.txt'
inputTxt = 'input.txt'

lineArray = []
File.foreach(inputTxt) do |line|
  lineArray.push(line.chomp)
end

dictionary = Dictionary.new

outputArray = []

lineArray.each do |line|
  command = line.split(':')
  outputArray.push(dictionary.send(*command))
end

out_file = File.new('stdout.txt', 'w')

outputArray.each do |output|
  if output
    out_file.puts(output)
  end
end


out_file.close
