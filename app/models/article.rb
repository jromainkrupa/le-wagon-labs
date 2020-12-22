class Article < ApplicationRecord
  belongs_to :alumni

  validates :title, :content, presence: true
  validates :title, length: { minimum: 5, maximum: 75 }
  validates :content, length: { minimum: 100 }
end
