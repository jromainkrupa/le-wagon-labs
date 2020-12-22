class Language < ApplicationRecord
  has_many :language_alumnis

  validates :name, presence: true, uniqueness: true
end
