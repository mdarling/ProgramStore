class DegreeRequirement < ActiveRecord::Base
	belongs_to :academic_program
	has_and_belongs_to_many :courses
	has_many :degree_requirement_types
end
