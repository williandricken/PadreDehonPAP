class RemoveMedicInfoIdFromStudent < ActiveRecord::Migration
  def change
    remove_column :students, :medic_info_id, :integer
  end
end
