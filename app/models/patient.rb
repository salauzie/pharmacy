class Patient < ActiveRecord::Base
	has_many :prescriptions, dependent: :destroy
end
