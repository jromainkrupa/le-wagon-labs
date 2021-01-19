class Task < ApplicationRecord
  belongs_to :project

  validates :name, presence: true, length: { minimum: 2, maximum: 50 }, allow_nil: true

  def completed!
    self.completed = !completed
    save
  end
end
