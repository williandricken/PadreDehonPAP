class AlunosController < ApplicationController
	def list
		@alunos = Aluno.all
	end

	def aluno_details
		@aluno = Aluno.find(params[:id])

		@temperamentos = Aluno.details(params[:id])

		return @aluno, @temperamentos
	end

	def new_aluno
		@aluno = Aluno.new
		@temperamentos = TemperamentoAluno.all

		return @aluno, @temperamentos
	end

	def create
		@aluno = Aluno.new(aluno_params)
		@aluno.save()
	end

	def aluno_params
		params.require(:aluno).permit(:nome, :data_nasc, :cidade_nasc, :ano_letivo, :data_inicio, :outro_temp)
	end
end