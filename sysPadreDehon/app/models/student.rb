class Student < ActiveRecord::Base
	has_many :student_behaviors
	has_many :behaviors, through: :student_behaviors

	has_many :student_responsibles
	has_many :responsibles, through: :student_responsibles

	belongs_to :medic_infos
end
