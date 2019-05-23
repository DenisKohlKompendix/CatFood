#!/usr/bin/env ruby

require 'json'


#if ARGV.length < 1
#    puts "usage: Mau.rb mau.json"
#    exit
#end
mau = File.read("./mau.json")
mau_obj = JSON.parse(mau)

inputDir = mau_obj["input"]
outputDir = mau_obj["output"]
cans = mau_obj["pipline"]

puts "Start feed the Cat from Egypt"
files = Dir.glob("#{inputDir}/*")
files.each do |file|
    content = File.read(file)
    cans.each do |obj| 
        c = obj["can"]
        can_options = obj["options"]
        script_file = "./catfood/Can_#{c}.rb"
        puts "Open Can #{script_file}"
        script_str = File.read(script_file)
        eval(script_str)
    end
    file.gsub!(/#{inputDir}/, outputDir)
    f = File.new(file,"w")
    f.write(content)
    f.close
end
