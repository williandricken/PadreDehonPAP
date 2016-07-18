class AlunosController < ApplicationController
	def list
		@alunos = Aluno.all
	end

	def aluno_details
		@aluno = Aluno.find(params[:id])

		@temperamentos = Aluno.details(params[:id])

		return @aluno, @temperamentos
	end

	# def aluno_details

	# 	sql = "SELECT temperamento_alunos.temperamento
	# 			FROM alunos
	# 				join comportamentos
	# 					on alunos.id = comportamentos.aluno_id
	# 				join temperamento_alunos
	# 					on temperamento_alunos.id = comportamentos.temperamento_aluno_id
	# 			where alunos.id = #{params[:id]}"
	# 	records_array = ActiveRecord::Base.connection.execute(sql)
		
	# 	@temperamentos = records_array

	# 	@aluno = Aluno.find(params[:id])

	# 	return @aluno, @temperamentos
	# end
end