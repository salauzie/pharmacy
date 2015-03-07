class PatientsController < ApplicationController

	def index
		@patients = Patient.all
		@patients = if !params[:q].blank?
      Patient.where("last_name LIKE ?", "%#{params[:q]}%")
    else
      Patient.all
    end
	end

	def show
		@patient = Patient.find params[:id]
	end

	def new
		@patient = Patient.new
	end

	def create
		@patient = Patient.create patient_params
		redirect_to root_path
	end	

	def edit
		@patient = Patient.find params[:id]
	end
	
	def update
		@patient = Patient.find params[:id]
		@patient.update_attributes patient_params
		redirect_to root_path
	end	

	def destroy
		@patient = Patient.find params[:id]
		@patient.delete
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
