class Aluno < ActiveRecord::Base
	has_many :comportamentos
	has_many :temperamento_aluno, through: :comportamentos

	def self.details(aluno_id)

		sql = "SELECT temperamento_alunos.temperamento
				FROM alunos
					join comportamentos
						on alunos.id = comportamentos.aluno_id
					join temperamento_alunos
						on temperamento_alunos.id = comportamentos.temperamento_aluno_id
				where alunos.id = #{aluno_id}"
				
		records_array = ActiveRecord::Base.connection.execute(sql)
		
		temperamentos = records_array

		return temperamentos
	end
end




