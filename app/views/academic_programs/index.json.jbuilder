json.array!(@academic_programs) do |academic_program|
  json.extract! academic_program, :id, :type, :admission_requirements, :career_opportunities, :contact_information, :degree, :keywords, :name, :online, :program_description, :transfer_agreements, :minimum_course_grade, :minimum_cumulative_gpa
  json.url academic_program_url(academic_program, format: :json)
end
