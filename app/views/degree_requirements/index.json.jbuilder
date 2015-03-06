json.array!(@degree_requirements) do |degree_requirement|
  json.extract! degree_requirement, :credits, :minimum_grade, :name

end
