class CreateJoinTableAcademicProgramInstitutionalEntity < ActiveRecord::Migration
  def change
  	create_join_table :academic_programs, :institutional_entities
  	add_index :academic_programs_institutional_entities, [:academic_program_id, :institutional_entity_id], name: 'ap_ie_index'
  end
end
