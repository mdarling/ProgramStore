class AddInformationToAcademicPrograms < ActiveRecord::Migration
  def change
    add_column :academic_programs, :college, :string
    add_column :academic_programs, :dept, :string
    add_column :academic_programs, :degree_type, :string
    add_reference :academic_programs, :notes, index: true
  end
end
