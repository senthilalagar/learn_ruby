# require 'net/http'

# url = URI.parse('https://www.w3schools.com/js/json_demo.txt')
# req = Net::HTTP::Get.new(url.to_s)
# res = Net::HTTP.start(url.host, url.port) {|http| http.request(req)}
# puts res

 
############################################################################

#Json on Ruby

# require 'json'
#  myJSON = '{"employees":[
#     { "firstName":"John", "lastName":"Doe" },
#     { "firstName":"Anna", "lastName":"Smith" },
#     { "firstName":"Peter", "lastName":"Jones" }
# ]}'
#  myObj = JSON.parse(myJSON);
#  puts myObj["employees"].length

# myObj["employees"].each do |obj|
# 	puts obj["firstName"]
# end

# name = myObj["name"][1]
# puts name
# data = JSON.parse(text) 

##############################################################################

# File Maupulation


# Dir.foreach("/home/senthil/Desktop") do |entry|
#     type = File::ftype(entry)
#     accepted = [".txt"]
#    if type.eql?("directory")
#    	else
#    		if accepted.include?File.extname(entry)
# 	   	lines = IO.readlines(entry)
# 	   	puts lines[0]
# 	   end
#    end
#    # puts File.size?(entry)
#    # 
# end
# if File.exists?("/home/senthil/Desktop/script_nested.txt")
# 	File.open("/home/senthil/Desktop/script_nested.txt").each do |content|
# puts content
# end
# else
# puts "FIle not found"
# end
# puts "out "

# ############################################################################


# Ruby Case Statement

# mark = [78,23,80,90,12]

# mark.each do |m|
# 	result = case m

# 	when 0..50 then "fail"
# 	when 50..100 then "pass"
# 	else "Invalid"
# 	end
# print result+"\n"
# end




# Parsing PDF File Ruby

	    require 'open-uri'
	    require 'rubygems'
		require 'pdf-reader'
    io     = open('http://www.cbec.gov.in/resources//htdocs-cbec/gst/gst_rates_approved%20_by_gst_council%20_11.06.2017.pdf')
    file = File.open("/home/senthil/Desktop/ruby/pdf_new.txt",'w')
    reader = PDF::Reader.new(io)
    puts reader.info
    puts reader.page_count
    reader.pages.each do |page|
    puts page
    file.write(page)
	end