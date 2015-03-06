class AddSlugToAcademicPrograms < ActiveRecord::Migration
  def change
    add_column :academic_programs, :slug, :string
  end
end
