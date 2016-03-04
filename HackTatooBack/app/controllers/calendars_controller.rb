class CalendarsController < ApplicationController
	rescue_from ActiveRecord::RecordNotFound, :with => :record_not_found

	def index
		dates = Calendar.all
		render json: dates
	end

	def create
		date = Calendar.new(create_date_params)
		date.save
		if date.save
			render json: date
		else
			render status: :conflict, template: 'errors/show'
		end	
	end

	def take_date
		date = Calendar.find(params[:id])
		if date.taken != true
			date.update(take_date_params)
			render json: date
		else
			render json: {message: "date has already been taken"}	
		end
	end

	def accept_date #esto lo tengo que poner para que sea solo de employee
		date = Calendar.find(params[:id])
		if date.taken == true && date.accepted != true
			date.accepted = true
			date.save
			render json: date
		else
			render json: {message: "date hasnt been taken or already accepted"}	
	end

	protected

	def create_date_params
		params.require(:employee_attributes)
		params.permit(:date, employee_attributes: [:id, :email, :password] )
	end

	def take_date_params
		params.require(:client_attributes)
		params.permit(:taken, :picture, client_attributes: [:id, :email, :password])
	end
end
