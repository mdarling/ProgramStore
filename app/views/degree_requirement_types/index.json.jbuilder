json.array!(@degree_requirement_types) do |degree_requirement_type|
  json.extract! degree_requirement_type, :id, :type_of_degree_requirement, :degree_requirement_id
  json.url degree_requirement_type_url(degree_requirement_type, format: :json)
end
