class AddMoratoriumToAcademicProgram < ActiveRecord::Migration
  def change
    add_column :academic_programs, :moratorium, :string
  end
end
