class Alumni < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :articles,         dependent: :destroy
  has_many :candidacies,      dependent: :destroy
  has_many :language_alumnis, dependent: :destroy
  has_many :projects, through: :candidacies

  acts_as_taggable_on :language_tags

  validates :first_name, :last_name, presence: true, length: { minimum: 2, maximum: 25 }

  def name
    "#{first_name} #{last_name}"
  end
end
