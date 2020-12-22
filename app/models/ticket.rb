class Ticket < ApplicationRecord
  belongs_to :alumni
  belongs_to :project
end
