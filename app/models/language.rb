class Language < ApplicationRecord
  validates :name, presence: true
end
