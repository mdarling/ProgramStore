class CreateJoinTableCoursesDegreeRequirements < ActiveRecord::Migration
  def change
  	create_join_table :courses, :degree_requirements
  	add_index :courses_degree_requirements, [:course_id, :degree_requirement_id], name: 'courses_degree_requirements_index'
  end
end
