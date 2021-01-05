class Project < ApplicationRecord
  belongs_to :entrepreneur
  has_many :roles
  has_many :candidacies, through: :roles
  has_many :alumnis, through: :candidacies
  has_many :tasks

  validates :name, :pain, :target, :solution, presence: true
  validates :name, length: { minimum: 2, maximum: 30 }
  validates :pain, :target, :solution, length: { minimum: 20 }
  validates :description, length: { minimum: 20 }, allow_blank: true
  validates :status, inclusion: { in: ['pending', 'progress', 'done'] }
end
