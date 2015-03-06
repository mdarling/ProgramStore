class AddIndexToslugToDegreePlans < ActiveRecord::Migration
  def change
  	add_index :degree_plans, :slug
  end
end
