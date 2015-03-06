class AddSlugToDegreePlans < ActiveRecord::Migration
  def change
    add_column :degree_plans, :slug, :string
  end
end
