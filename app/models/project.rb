class Project < ApplicationRecord
  belongs_to :entrepreneur
  has_many :roles
  has_many :candidacies, through: :roles
  has_many :alumnis, through: :candidacies
  has_many :tasks

  validates :name, :pain, :target, :solution, presence: true
end
