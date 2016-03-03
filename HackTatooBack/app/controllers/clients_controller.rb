class ClientsController < ApplicationController
	rescue_from ActiveRecord::RecordNotFound, :with => :record_not_found

	def create
		@client = Client.new(create_params)
		render json: @client
	end

	def login
	
		
	end

	protected

	def create_params
		params.require(:client).permit(:name, :password, :email)	
	end


end
