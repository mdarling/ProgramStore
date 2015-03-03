class CreateDegreePlans < ActiveRecord::Migration
  def change
    create_table :degree_plans do |t|
      t.integer :academic_program_id
      t.string :type_of_program
      t.text :degree_plan

      t.timestamps
    end
  end
end
