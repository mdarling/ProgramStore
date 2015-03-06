class AcademicProgram < ActiveRecord::Base
	extend FriendlyId
	friendly_id :name, use: :slugged

	has_and_belongs_to_many :institutional_entities
	has_many :degree_requirements
	has_many :degree_plans
end
