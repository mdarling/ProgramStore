class Course < ActiveRecord::Base
	belongs_to :institutional_entity
	has_and_belongs_to_many :degree_requirements
end
