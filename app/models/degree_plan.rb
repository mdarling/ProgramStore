class DegreePlan < ActiveRecord::Base
	belongs_to :academic_program
	serialize :degree_plan, JSON
end
