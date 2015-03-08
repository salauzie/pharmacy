class PrescriptionsController < ApplicationController
	def index
		@patient = Patient.find params[:patient_id]
		@prescriptions = @patient.prescriptions.all
	end

	def show
		@patient = Patient.find params[:patient_id]
		@prescription = @patient.prescriptions.find params[:id]
	end

	def new
		@patient = Patient.find params[:patient_id]
		@prescription = @patient.prescriptions.new
	end

	def create
		@patient = Patient.find params[:patient_id]
		@prescription = @patient.prescriptions.create prescription_params
		redirect_to root_path
	end
	
	def edit
		@patient = Patient.find params[:patient_id]
		@prescription = @patient.prescriptions.find params[:id]
	end

	def update
		@patient = Patient.find params[:patient_id]	
		@prescription = @patient.prescriptions.find params[:id]
		@prescription.update_attributes prescription_params
		redirect_to root_path
	end	

	def destroy
		@patient = Patient.find params[:patient_id]
		@prescription = Prescription.find params[:id]
		@prescription.delete
		redirect_to root_path
	end
private
	def prescription_params
		params.require(:prescription).permit(
			:medication,
			:strength,
			:directions,
			:quantity,
			:days_supply,
			:doctor,
			:insurance,
			:DAW,
			:refills,
			:wait_time,
			:control,
			:ready_fill,
			patient_ids: []
			)
	end	
end
