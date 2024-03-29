<<<<<<< HEAD
class User < ActiveRecord::Base
	has_many :articles
	validates :username, presence: true, uniqueness: true, length: { minimum: 3, maximum: 25 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, length: { maximum: 105 }, uniqueness: { case_sensitive: false }, 
 	format: { with: VALID_EMAIL_REGEX }
 	before_save { self.email = email.downcase }

end
=======
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
>>>>>>> actualizacion
