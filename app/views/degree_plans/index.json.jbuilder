json.array!(@degree_plans) do |degree_plan|
  json.extract! degree_plan, :id, :academic_program_id, :type_of_program, :degree_plan

end
