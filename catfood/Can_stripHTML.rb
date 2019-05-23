
temp = ""
content.gsub!(/\r\n?/, "\n")
content.each_line do |line|
    line.gsub!(/<\/?[^>]*>/, " ")
    temp += line
end
content = temp