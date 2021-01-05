class Role < ApplicationRecord
  belongs_to :project
  has_many :candidacies

  ROLES = ['back-end', 'front-end', 'UX/UI', 'project manager', 'mentor']
  validates :name, :number, :status, presence: true
  validates :name, inclusion: { in: ROLES }
  validates :status, inclusion: { in: ['pending', 'progress', 'done'] }
end
