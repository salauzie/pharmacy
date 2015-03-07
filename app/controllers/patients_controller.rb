class PatientsController < ApplicationController

	def index

	end
		
	def new
		@patient = Patient.new
	end

	def create
		@patient = Patient.create patient_params
		redirect_to root_path
	end	

private
	def patient_params
		params.require(:patient).permit(
			:first_name,
			:last_name,
			:dob,
			:gender,
			:allergies
			)
	end
end
