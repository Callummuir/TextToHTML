# Open the file to a redaable format
def open_file()
	puts "Please input fileName to input"
	puts Dir.entries("../bin/input/")
	input_name = gets.chomp
	# TODO add error checking
	return open("../bin/input/" + input_name, "rb")
end

# read the file in
def file_to_string(file)
	return file.read	
end

# add tags to the file.
def add_tags(string_in)
	i = 0;
	# search string for tag
	while i < string_in.length do
		
		# if we have found the start of a tag
		if string_in[i] == "<"
			tag_start_index = i
			j = i

			# find end of tag
			until string_in[j-1] + string_in[j] == "\">" do
				j += 1

			end
			
			tag_end_index = j
			puts string_in[i..j]
			puts " ----------------- "

			i = j+1
		end
		i += 1
	end 
	

	

	output = string_in
	output
end

# split the string into paragraphs. 
# do not split content of code tags into one
def split_string_by_para(string_in)
	para_array = string_in.split("\n")
	return para_array
end

# add html for the start, end and paragraphs
def add_html_to_string(array_of_para)
	# Add start of the HTML
	out_string = add_start(array_of_para)

	# Add html for paragraphs
	out_string = add_paragraph_html(out_string, array_of_para)

	# Add end of the HTML 
	out_string = add_end(out_string) 

	return out_string
end

# add HTML to the start
def add_start(paragraph_array)
	out_string =	"<div class=\"post col-xs-12\">
  <div class=\"col-md-3 col-xs-1\">
  </div>

  <div class=\"col-md-6 col-xs-10\">
    <h2>" + paragraph_array[0] + "</h2>

"
	out_string
end 

# add html for each paragraph
def add_paragraph_html(in_string, paragraph_array)
	# TODO do not include any paragraphs that are in the code snippets
	# Add each paragraph
	(1..(paragraph_array.length - 1)).each do |i|
		if(paragraph_array[i].length < 1)
			
		else 
			in_string = in_string + 
				"  <p>
				  " + paragraph_array[i] + 
				"
				</p> 
				"
		end
	end

	in_string
end

# add html for the end of the file
def add_end(in_string)
	out_string = in_string + "  </div> 
		  <div class=\"col-md-3 col-xs-1\">
		  </div>
		  <div class=\"seperator col-xs-12\">
		    <p>------------------------------x------------------------------</p>
		  </div>
		</div>
		"
	out_string
end

# output the string to a file specified by the user
def output_string_to_file(output_string)
	puts "Please input name for outputfile, dont inlcude the file extension"
	output_name = gets.chomp
	output_loc = "../bin/output/" + output_name + ".txt"
	output_file = File.new(output_loc, "w")
	output_file.puts(output_string)
end


# run order
file_in = open_file()
string_content = file_to_string(file_in)
with_tags = add_tags(string_content)
paragraphs = split_string_by_para(with_tags)
out_string = add_html_to_string(paragraphs)
output_string_to_file(out_string)





