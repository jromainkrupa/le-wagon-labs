class Alumni < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :tickets,     dependent: :destroy
  has_many :articles,    dependent: :destroy
  has_many :candidacies, dependent: :destroy
  has_many :specialties, dependent: :destroy

  validates :first_name, presence: true
  validates :last_name,  presence: true
end
