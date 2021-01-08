class Language < ApplicationRecord
  has_many :language_alumnis
  has_many :language_roles

  validates :name, presence: true
end
