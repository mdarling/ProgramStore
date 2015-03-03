json.array!(@degree_requirements) do |degree_requirement|
  json.extract! degree_requirement, :id, :academic_program_id, :credits, :minimum_grade, :name, :note
  json.url degree_requirement_url(degree_requirement, format: :json)
end
