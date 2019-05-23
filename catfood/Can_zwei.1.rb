temp = ""
str = can_options[0]
content.gsub!(/\r\n?/, "\n")
content.each_line do |line|
    temp += "#{str} #{line}"
end

content = temp