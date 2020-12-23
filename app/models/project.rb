class Project < ApplicationRecord
  belongs_to :entrepreneur
  has_many :candidacies
  has_many :alumnis, through: :candidacies
  belongs_to :alumni

  validates :name, :pain, :target, :solution, presence: true
end
