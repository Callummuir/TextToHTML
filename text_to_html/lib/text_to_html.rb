def read_file(stringFileLoc)
	return open(stringFileLoc, "rb")
end

def output_string_to_file(outputString)
	# TODO change from default?
	# TODO add error checking, false if fail, true if not
	# TODO add in checking for if the file is already in use. Then create new file W/date, or title from user?
	outputLoc = "outExample.txt"
	outputFile = File.new(outputLoc, "w")
	outputFile.puts(outputString)
end

def file_to_string(file)
	return fileContent = file.read	
end

def split_string_by_para(stringIn)
	paraArray = stringIn.split("\n")
	puts paraArray[0]
	return paraArray
end








# TODO add user input for text file
fileLoc = "example.txt"
fileIn = read_file(fileLoc)
stringContent = file_to_string(fileIn)
split_string_by_para(stringContent)
# TODO here for more functions!

# TODO parse the file


# TODO Add in html tags



output_string_to_file(stringContent)





