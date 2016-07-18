class TemperamentosController < ApplicationController
	def show_and_add
		@temperamentos = TemperamentoAluno.all
	end
end