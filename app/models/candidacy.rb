class Candidacy < ApplicationRecord
  belongs_to :role
  belongs_to :alumni
  has_one :project, through: :role

  validates :status, inclusion: { in: ['accepted', 'refused', 'pending'] }

  def accepted?
    status == 'accepted'
  end

  def refused?
    status == 'refused'
  end

  def pending?
    status == 'pending'
  end
end
