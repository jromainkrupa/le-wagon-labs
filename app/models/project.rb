class Project < ApplicationRecord
  belongs_to :entrepreneur

  validates :name, :pain, :target, :solution, presence: true
end
