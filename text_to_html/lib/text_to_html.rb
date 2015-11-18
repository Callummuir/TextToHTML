def read_file(stringFileLoc)
	return open(stringFileLoc, "rb")
end

def output_string_to_file(outputString)
	outputLoc = "../bin/output/outExample.txt"

	# TODO change from default?
	# TODO add error checking, false if fail, true if not
	# TODO add in checking for if the file is already in use. Then create new file W/date, or title from user?
	
	outputFile = File.new(outputLoc, "w")
	outputFile.puts(outputString)
end

def file_to_string(file)
	return fileContent = file.read	
end

def split_string_by_para(stringIn)
	paraArray = stringIn.split("\n")
	return paraArray
end

# first para = title <h2>
# all subsequent paragraps are paragraphs
def add_html_to_string(arrayOfPara)
	# Add start of the HTML
	outString = 
		"<div class=\"post col-xs-12\">
		  <div class=\"col-md-3 col-xs-1\">
		  </div>

		  <div class=\"col-md-6 col-xs-10\">
		  	<h2>" + arrayOfPara[0] + "</h2>"
	# Add each paragraph
	(1..(arrayOfPara.length - 1)).each do |i|
		if(arrayOfPara[i].length < 1)
			
		else 
			outString = outString + 
			  "<p>" + arrayOfPara[i] + "
			  </p> 
			  <br />

			  "
		end
	end



	# Add end of the HTML 
	outString = outString + 
    "</div> 
     <div class=\"col-md-3 col-xs-1\">
     </div>
     <div class=\"seperator col-xs-12\">
     <p>------------------------------x------------------------------</p>
     </div>
    </div>
		"

	return outString
end





# TODO add user input for text file
fileLoc = "example.txt"
fileIn = read_file(fileLoc)
stringContent = file_to_string(fileIn)
paragraphs = split_string_by_para(stringContent)
outString = add_html_to_string(paragraphs)
output_string_to_file(outString)





