class User < ActiveRecord::Base
  attr_accessible :email, :name, :password
  
  validates :name, presence: true
  
  validates :password, length: {within: 3..5}
  validates :password, confirmation: true



  emailFormatValidation = /[a-z.-]+@[a-z \d -.]+[.][a-z]+/i
  validates :email, format: {with: emailFormatValidation}
  validates :email, uniqueness: true
end
