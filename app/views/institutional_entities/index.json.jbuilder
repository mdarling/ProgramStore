json.array!(@institutional_entities) do |institutional_entity|
  json.extract! institutional_entity, :id, :parent_entity_id, :type, :level, :acronym, :grad_programs, :name, :org_code, :undergrad_programs, :url
  json.url institutional_entity_url(institutional_entity, format: :json)
end
