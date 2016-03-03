class ClientsController < ApplicationController
	rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
  before_action :authenticate1, except:[:login, :create]

	def create
		@client = Client.create(create_params)
		render json: @client
	end

	def login
    u = Client.where(params_log_in).take
    if u
      u.token = SecureRandom.uuid.gsub(/\-/,'')      
      u.save
      render json: u
    else
      render json: {message: 'UserNotFound'}, status: :not_found
    end		
	end

	protected

	def create_params
		params.permit(:name, :password, :email)	
	end
  
  def params_log_in
    params.require(:client).permit(:email, :password)
  end

end
