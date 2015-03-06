class AddIndexToslugToAcademicPrograms < ActiveRecord::Migration
  def change
  	  	add_index :academic_programs, :slug

  end
end
