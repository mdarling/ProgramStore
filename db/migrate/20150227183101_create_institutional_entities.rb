class CreateInstitutionalEntities < ActiveRecord::Migration
  def change
    create_table :institutional_entities do |t|
      t.integer :parent_entity_id
      t.string :type
      t.integer :level
      t.string :acronym
      t.boolean :grad_programs
      t.string :name
      t.string :org_code
      t.boolean :undergrad_programs
      t.string :url

      t.timestamps
    end
  end
end
