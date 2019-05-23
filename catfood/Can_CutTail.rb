temp = ""
str = can_options[0]
content.gsub!(/\r\n?/, "\n")
check=true
content.each_line do |line|
    if line=~ /#{str}/
        check=false
    end
    if check 
        temp += line
    end
end

content = temp