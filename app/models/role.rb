class Role < ApplicationRecord
  belongs_to :project
  has_many :candidacies

  validates :name, :number, :status, presence: true
end
