class EmployeesController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
  before_action :authenticate2, except:[:login, :create, :index, :create_admin]

def index
  employees = Employee.all
  render json: employees 
  
end

  def create
    employee = Employee.new(create_params)
    a = Employee.find_by_email(params[:email])
    employee.save
    if a && employee.email == a.email
      render json: {message: 'this email already exist'}
    else
      render json: employee
    end
  end

  def create_admin
    admin = Employee.new(create_params)
    admin.admin = true
    admin.save
    render json: admin
  end

  def login
    u = Employee.where(params_log_in).take
    if u
      u.token = SecureRandom.uuid.gsub(/\-/,'')      
      u.save
      render json: u
    else
      render json: {message: 'UserNotFound'}, status: :not_found
    end   
  end

  protected

 # def create_admin_params
  #  params.permit(:name, :password, :email, :admin) 
  #end

  def create_params
    params.permit(:name, :password, :email) 
  end
  
  def params_log_in
    params.require(:employee).permit(:email, :password)
  end

end
