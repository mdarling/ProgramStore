class DeleteNotesIdFromAcademicPrograms < ActiveRecord::Migration
  def change
  	remove_column :academic_programs, :notes_id
  end
end
