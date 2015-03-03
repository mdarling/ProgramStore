class InstitutionalEntity < ActiveRecord::Base
	belongs_to :parent_entity, :class_name => "InstitutionalEntity", :foreign_key => "parent_entity_id"
 	has_and_belongs_to_many :academic_programs
 	has_many :courses
 	has_many :meta_requirements
end
