class Role < ApplicationRecord
  belongs_to :project
  has_many :candidacies
end
