class RemoveStudentIdFromMedicInfo < ActiveRecord::Migration
  def change
    remove_column :medic_infos, :student_id, :integer
  end
end
