class CreateMetaRequirements < ActiveRecord::Migration
  def change
    create_table :meta_requirements do |t|
      t.integer :institutional_entity_id
      t.string :description
      t.string :value

      t.timestamps
    end
  end
end
