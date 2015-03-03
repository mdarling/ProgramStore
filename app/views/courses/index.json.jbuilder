json.array!(@courses) do |course|
  json.extract! course, :id, :institutional_entity_id, :co_or_prerequisite_string, :co_or_prerequisite_array, :corequisite_string, :corequisite_array, :credits, :description, :number, :prerequisite_array, :prerequisite_string, :semester_offering, :title
  json.url course_url(course, format: :json)
end
