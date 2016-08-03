class MedicInfo < ActiveRecord::Base
	has_many :disease_medic_infos
	has_many :diseases, through: :disease_medic_infos
end
