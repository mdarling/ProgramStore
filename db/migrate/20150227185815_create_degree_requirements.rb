class CreateDegreeRequirements < ActiveRecord::Migration
  def change
    create_table :degree_requirements do |t|
      t.integer :academic_program_id
      t.integer :credits
      t.string :minimum_grade
      t.string :name
      t.string :note

      t.timestamps
    end
  end
end
