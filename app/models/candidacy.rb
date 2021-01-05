class Candidacy < ApplicationRecord
  belongs_to :role
  belongs_to :alumni

  validates :status, inclusion: { in: ['accepted', 'refused', 'pending'] }
end
