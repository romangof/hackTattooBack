class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

  def authenticate1
    authenticate_or_request_with_http_token do |token|
      @client = Client.find_by(token: token)
    end    
  end  

  def authenticate2
    authenticate_or_request_with_http_token do |token|
      @employee = Employee.find_by(token: token)
    end    
  end  
end
