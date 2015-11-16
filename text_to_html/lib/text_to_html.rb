


def read_file(fileToRead)
	txt = open(fileToRead)
  puts "Here's your file #{fileToRead}:"
  print txt.read
end


filename = "example.txt"

read_file(filename)



