class Student < ActiveRecord::Base
	has_many :student_behaviors
	has_many :behaviors, through: :student_behaviors
end
