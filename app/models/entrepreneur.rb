class Entrepreneur < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :projects

  validates :first_name, :last_name, :phone, presence: true
  validates :first_name, :last_name, length: { minimum: 2, maximum: 25 }
  validates :company_name, length: { minimum: 2, maximum: 25 }, allow_blank: true
  validates :phone, length: { is: 10 }

  def name
    "#{first_name} #{last_name}"
  end
end
