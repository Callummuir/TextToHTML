def read_file()
	puts "Please input fileName to input"
	puts Dir.entries("../bin/input/")
	input_name = gets.chomp
	# TODO add error checking
	return open("../bin/input/" + input_name, "rb")
end

def output_string_to_file(output_string)
	puts "Please input name for outputfile"
	output_name = gets.chomp
	output_loc = "../bin/output/" + output_name + ".txt"
	output_file = File.new(output_loc, "w")
	output_file.puts(output_string)
end

def file_to_string(file)
	return file_content = file.read	
end

def split_string_by_para(stringIn)
	para_array = string_in.split("\n")
	return para_array
end

def add_html_to_string(arrayOfPara)
	# Add start of the HTML
	out_string = 
"<div class=\"post col-xs-12\">
  <div class=\"col-md-3 col-xs-1\">
  </div>

  <div class=\"col-md-6 col-xs-10\">
    <h2>" + array_of_para[0] + "</h2>

"
	# Add each paragraph
	(1..(array_of_para.length - 1)).each do |i|
		if(array_of_para[i].length < 1)
			
		else 
			out_string = out_string + 
  "  <p>
    " + array_of_para[i] + 
  "
  </p> 
  <br />

"
		end
	end

	# Add end of the HTML 
	out_string = out_string + 
"  </div> 
  <div class=\"col-md-3 col-xs-1\">
  </div>
  <div class=\"seperator col-xs-12\">
    <p>------------------------------x------------------------------</p>
  </div>
</div>
"

	return out_string
end

file_in = read_file()
string_content = file_to_string(file_in)
paragraphs = split_string_by_para(string_content)
out_string = add_html_to_string(paragraphs)
output_string_to_file(out_string)





