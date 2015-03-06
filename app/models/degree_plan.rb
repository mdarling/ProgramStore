class DegreePlan < ActiveRecord::Base
	extend FriendlyId
	friendly_id :type_of_program, use: :slugged

	belongs_to :academic_program
	serialize :degree_plan, JSON
end
