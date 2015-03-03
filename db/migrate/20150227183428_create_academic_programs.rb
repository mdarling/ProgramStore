class CreateAcademicPrograms < ActiveRecord::Migration
  def change
    create_table :academic_programs do |t|
      t.string :type
      t.text :admission_requirements
      t.text :career_opportunities
      t.text :contact_information
      t.string :degree
      t.text :keywords
      t.string :name
      t.string :online
      t.text :program_description
      t.text :transfer_agreements
      t.string :minimum_course_grade
      t.string :minimum_cumulative_gpa

      t.timestamps
    end
  end
end
