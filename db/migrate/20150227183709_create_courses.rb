class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.integer :institutional_entity_id
      t.text :co_or_prerequisite_string
      t.text :co_or_prerequisite_array
      t.text :corequisite_string
      t.text :corequisite_array
      t.string :credits
      t.text :description
      t.string :number
      t.text :prerequisite_array
      t.text :prerequisite_string
      t.string :semester_offering
      t.string :title

      t.timestamps
    end
  end
end
