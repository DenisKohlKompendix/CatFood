temp = ""
str = can_options[0]
content.gsub!(/\r\n?/, "\n")
check=false
content.each_line do |line|
    if line=~ /#{str}/
        check=true
    end
    if check 
        temp += line
    end
end

content = temp