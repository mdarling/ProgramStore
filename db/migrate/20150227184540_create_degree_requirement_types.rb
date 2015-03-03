class CreateDegreeRequirementTypes < ActiveRecord::Migration
  def change
    create_table :degree_requirement_types do |t|
      t.string :type_of_degree_requirement
      t.integer :degree_requirement_id

      t.timestamps
    end
  end
end
