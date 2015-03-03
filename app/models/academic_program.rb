class AcademicProgram < ActiveRecord::Base
	has_and_belongs_to_many :institutional_entities
	has_many :degree_requirements
	has_many :degree_plans
end
