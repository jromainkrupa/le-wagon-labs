class Entrepreneur < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :projects

  validates :first_name, :last_name, :phone, presence: true
  validates :first_name, :last_name, :company_name, length: { minimum: 2, maximum: 25 }
  validates :phone, length: { is: 10 }
end
