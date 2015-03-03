json.array!(@meta_requirements) do |meta_requirement|
  json.extract! meta_requirement, :id, :institutional_entity_id, :description, :value
  json.url meta_requirement_url(meta_requirement, format: :json)
end
