class Entrepreneur < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :projects

  validates :first_name, presence: true
  validates :last_name,  presence: true
  validates :phone,      presence: true
end
