class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
has_many :workouts, :dependent => :destroy
  attr_accessible :email, :name, :password, :remember_me, :password_confirmation

 # validates :name, presence: true
  
  validates :password, length: {within: 3..10}
  validates :password, confirmation: true



  emailFormatValidation = /[a-z.-]+@[a-z \d -.]+[.][a-z]+/i
  validates :email, format: {with: emailFormatValidation}
  validates :email, uniqueness: true
end
