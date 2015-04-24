# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'json'

DegreePlan.delete_all
AcademicProgram.delete_all

# File.open("db/academic_programs.json", "r") do |f|
#   	text = File.read(f)
#   	jsonData = JSON.parse(text)
#     jsonData.each do |record|
#     	name = record["name"].gsub("/", "_")
#     	new_file_name = "db/AcademicProgramsJsonData/"+name+".json"

#     	puts new_file_name
#     	out_file = File.new(new_file_name, "w")

#       record.delete("id")
#       record.delete("dept_id")
#       record.delete("created_at")
#       record.delete("updated_at")
#       record.delete("year_id")


#       out_file.write(JSON.pretty_generate(record))

#     	out_file.close


#     end
#   end
puts Dir.pwd
File.readlines("./db/all_degree_plans.json").each do |plan|

  jsonData = JSON.parse(plan)
  # puts jsonData["name"]
  #puts jsonData["name"]
  temp_program = AcademicProgram.create(
      :name => jsonData["name"], 
      :degree => jsonData["degree"], 
      :program_description => jsonData["program_description"],
      :admission_requirements => jsonData["admission_requirements"],
      :transfer_agreements => jsonData["transfer_agreements"],
      :career_opportunities => jsonData["career_opportunities"],
      :contact_information => jsonData["contact_information"],
      :online => jsonData["online"],
      :keywords => jsonData["keywords"],
      :moratorium => jsonData["moratorium"]
     )
  temp_program.save
end

File.readlines("./db/all_degree_reqs.json").each do |reqs|
      jsonPlan = JSON.parse(reqs)
     #@ puts "!!!!!!!!!!" + jsonPlan["name"]
      temp_program = AcademicProgram.find_by_name(jsonPlan["name"])
      # puts "%%%%%%%%%%%%%" + temp_program.name
      # puts "!!!!!!!!!!!" + temp_program.college
      temp_program.college = jsonPlan["college"]
      temp_program.dept = jsonPlan["dept"]
      temp_program.degree_type = jsonPlan["degree_type"]
      temp_program.save

      jsonPlan.delete("name")
      jsonPlan.delete("college")
      jsonPlan.delete("dept")
      jsonPlan.delete("degree_awarded")
      jsonPlan.delete("notes")
      temp_plan = DegreePlan.create(
        :academic_program_id  => temp_program.id,
        :type_of_program => jsonPlan["degree_type"],
        :degree_plan => jsonPlan
      )
      temp_plan.save
      temp_program.degree_plans << temp_plan

      #Degree Requirements
      if jsonPlan["terms"]
        jsonPlan["terms"].each do |term|
          term["term_items"].each do |term_item|
            temp_requirement = DegreeRequirement.create(
              :academic_program_id => temp_program.id,
              :credits => term_item["credits"],
              :minimum_grade => term_item["min_grade"],
              :name => term_item["name"]

            )
            temp_requirement.save
            temp_program.degree_requirements << temp_requirement
          end #term_items each do
        end #terms each do
      end # if terms
    
  end
  


# not_matched = []
# Dir[File.dirname(__FILE__) + "/DegreePlansJsonData/*.json"].each  do |file|
#     plan = File.read(file)
#     jsonPlan = JSON.parse(plan)

#     if AcademicProgram.where(name: "Applied Behavior Analysis: Research-Based Interventions for Individuals with Disabilities Who Have Behavioral Challenges").empty?
#     # matched = false
#   #puts jsonPlan["name"]
#   #puts jsonData["name"]


#   # Dir[File.dirname(__FILE__) + "/AcademicProgramsJsonData/*.json"].each  do |file|
#   #   data = File.read(file)
#   #   jsonData = JSON.parse(data)

#   #   if jsonData["name"] == jsonPlan["name"]
#   #     # puts "#{jsonData["name"]} == #{jsonPlan["name"]}"
#   #     matched = true
#   #     break   
#   #   else
#   #     matched = false
#   #   end

    
#   # end

#   # puts matched
  
#   # unless matched
#   #   puts 'hi'
#   #   not_matched << plan["name"]
#   # end

# end

# puts not_matched

#  data = File.read(file)
# 	jsonData = JSON.parse(data)
# 	# puts jsonData["name"]
# 	#puts jsonData["name"]
# 	tempDegreePlan = DegreePlan.create(:name => jsonData["name"], :program_type => jsonData["type"], :academic_year => "2014-15", :degree => jsonData["degree"], :program_description => jsonData["program_description"])

# 	jsonData["degree_requirements"].each do |requirement|
# 		tempDegreePlan.term_items << TermItem.new(:name => requirement["name"], :prerequisites => requirement["prerequisites"])
# 		# puts requirement["name"]
# 	end
# end


