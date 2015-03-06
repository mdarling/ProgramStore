require 'json'
Dir[File.dirname(__FILE__) + "/AcademicProgramsJsonData/*.json"].each  do |file|
	
	match = 0
	noMatch = 0
	program = File.read(file)
	jsonProgram = JSON.parse(program)
	puts jsonProgram
	Dir[File.dirname(__FILE__) + "/DegreePlansJsonData/*.json"].each  do |planFile|
	    plan = File.read(planFile)
	    jsonPlan = JSON.parse(planFile)

	    # if jsonProgram["name"] == jsonPlan["name"]
	    # 	match++
	    
	    # # else
	    # # 	noMatch++

	    # # 	puts jsonPlan["name"] 
	    # end
	end
	# puts 'hi'
	# puts "matches = " + match
	# puts "no matches = " + noMatch
end