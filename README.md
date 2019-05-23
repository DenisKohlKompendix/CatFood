
# CatFood

Catfood is a tool to prepare date for dataanalyse processes. 

It is written in Ruby. 
Catfood is a dynamic and easy to extend system to perpare files form dataanalys Processing.

You can sequancel run same tasks over your data. The tasks are independend scripts. You will find same of them in the folder **catfood**.    

## Can  

the is a task the will run in the Catfood main task.   
The idea is to run same task sequancel over your data.   
All **Cans** provide the file Data in der variable named *content*. 

## Simplel Can  
	Can_dump.rb
	puts content 
	## content contains the data from the file.
	
## Strip HTML Can
	Can_stripHTML.rb
	temp = ""
	content.gsub!(/\r\n?/, "\n")
	content.each_line do |line|
	    line.gsub!(/<\/?[^>]*>/, " ")
	    temp += line
	end
	content = temp
	

## mau.json  

mau.json is the configfile to ran a task bundel.   

	{
    	"input":"./input",
    	"output":"./output",
    	"pipline":[{"can":"dump"},....]
	}

**input** is the source folder.   
**output** the destination folder.   
**pipline** is the task cain. Every taks is a ruby script in **catfood** folder. All script have to named like **Can_[youtask]**      
	
 
## Using  
Make a Copy of the CatFood folder. Desgin your Taskchain.   
And run it 

	ruby feedTheCat.rb  

*Denis Kohl 23.05.2019*
