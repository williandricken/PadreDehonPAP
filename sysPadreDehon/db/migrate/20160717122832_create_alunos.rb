class CreateAlunos < ActiveRecord::Migration
  def change
    create_table :alunos do |t|
      t.string :nome
      t.string :data_nasc
      t.string :cidade_nasc
      t.integer :ano_letivo
      t.string :data_inicio
      t.string :outro_temp

      t.timestamps null: false
    end
  end
end