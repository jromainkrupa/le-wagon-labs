class Ticket < ApplicationRecord
  belongs_to :alumni
  belongs_to :project

  validate :description, presence: true, length: { minimum: 100 }
end
