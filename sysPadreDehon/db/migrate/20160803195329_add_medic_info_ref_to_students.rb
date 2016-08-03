class AddMedicInfoRefToStudents < ActiveRecord::Migration
  def change
    add_reference :students, :medic_info, index: true, foreign_key: true
  end
end
