class PrescriptionsController < ApplicationController
	def index
		@prescriptions = Prescription.all
	end

	def show
		@prescription = Prescription.find params[:id]
	end

	def new
		@prescription = Prescription.new
	end

	def create
		@prescription = Prescription.create prescription_params
		redirect_to root_path
	end
	
	def edit
		@prescription = Prescription.find params[:id]
	end

	def update
	@prescription = Prescription.find params[:id]
	@prescription.update_attributes prescription_params
	redirect_to root_path
	end	

	def destroy
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
			:ready_fill
			)
	end	
end
