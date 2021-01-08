class Role < ApplicationRecord
  belongs_to :project
  has_many :candidacies
  has_many :language_roles

  ROLES = ['back-end', 'front-end', 'UX/UI', 'mentor']
  validates :name, :number, :status, presence: true
  validates :name, inclusion: { in: ROLES }
  validates :status, inclusion: { in: ['pending', 'progress', 'done'] }

  def progress?
    status == 'progress'
  end

  def done?
    status == 'done'
  end

  def pending?
    status == 'pending'
  end
end
