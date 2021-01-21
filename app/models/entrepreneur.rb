class Entrepreneur < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :projects

  has_one_attached :photo

  validates :first_name, :last_name, :phone, presence: true
  validates :first_name, :last_name, length: { minimum: 2, maximum: 25 }
  validates :company_name, length: { minimum: 2, maximum: 25 }, allow_blank: true
  validates :phone, length: { is: 10 }

  def name
    "#{first_name} #{last_name}"
  end

  def profil_pic
    photo.attached? ? photo.key : 'photo-avatar-basic'
  end
end
