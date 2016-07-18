class TemperamentoAluno < ActiveRecord::Base
	has_many :comportamentos
	has_many :alunos, through: :comportamentos
end
