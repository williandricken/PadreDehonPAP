class Comportamento < ActiveRecord::Base
	belongs_to :aluno
	belongs_to :temperamento_aluno
end
