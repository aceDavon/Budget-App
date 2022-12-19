class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :transactions
  has_many :categories, through: :transactions

  validates :full_name,
            length: { minimum: 3, message: 'fields can not be less than 3 letters' }
  validates :email,
            uniqueness: true, message: 'Email already exists'
  validates :password,
            length: { minimum: 6, message: 'Password can not be less than 6 characters' }
end
