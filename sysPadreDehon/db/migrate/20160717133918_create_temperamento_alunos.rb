class CreateTemperamentoAlunos < ActiveRecord::Migration
  def change
    create_table :temperamento_alunos do |t|
      t.string :temperamento
      
      t.timestamps null: false
    end
  end
end
