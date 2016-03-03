class Employee < ActiveRecord::Base
	has_secure_password
	has_many :calendars
  has_many :clients, through: :calendars


  validates :name, :email, :password_digest, :presence =>{is: true, :message =>"can't be blank spaces"} 
  validates :email, uniqueness: true#{case_sensitive: false, :message =>"this email alredy exist"}

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, format: { :with => VALID_EMAIL_REGEX , message: "mail format is invalid" }
end
