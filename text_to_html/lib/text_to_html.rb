

# Reads in a file with given location
def read_file(fileToRead)
	return open(fileToRead, "rb")
end

# ouputs a string into the correct output file
def output_file(fileToOutput)
	outputLoc = "outExample.txt"
	outputFile = File.new("outputLoc", "w")
	outputFile.puts(fileToOutput)
end

# Convert file to a string
def file_to_string(file)
	fileContent = file.read	
end

# TODO add user input for text file
filename = "example.txt"

# read in the file
read_file(filename)

# parse the file


# Add in html tags


# convert to string


# output



