class CreateComportamentos < ActiveRecord::Migration
  def change
    create_table :comportamentos do |t|
      t.integer :aluno_id
      t.integer :temperamento_aluno_id

      t.timestamps null: false
    end
    add_index :comportamentos, :aluno_id
    add_index :comportamentos, :temperamento_aluno_id
  end
end
