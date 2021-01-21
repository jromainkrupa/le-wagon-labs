class Project < ApplicationRecord
  belongs_to :entrepreneur
  has_many :roles
  has_many :candidacies, through: :roles
  has_many :alumnis, through: :candidacies
  has_many :tasks

  validates :name, :pain, :target, :solution, presence: true
  validates :name, length: { minimum: 2, maximum: 30 }
  validates :pain, :target, :solution, length: { minimum: 20 }
  validates :description, length: { minimum: 20 }, allow_blank: true
  validates :status, inclusion: { in: ['review', 'accepted', 'pending', 'development', 'done'] }

  def project_alumnis
    candidacies.select { |candidacy| candidacy.accepted? }
               .map { |candidacy| candidacy.alumni }
               .reject { |alumni| alumni.is_mentor? }
  end

  def mentor
    return nil if candidacies.select { |candidacy| candidacy.accepted? && candidacy.alumni.is_mentor? }.empty?

    candidacies.select { |candidacy| candidacy.accepted? && candidacy.alumni.is_mentor? }
               .first
               .alumni
  end

  def all_users
    project_alumnis + [mentor, entrepreneur]
  end

  def review?
    status == 'review'
  end

  def accepted?
    status == 'accepted'
  end

  def pending?
    status == 'pending'
  end

  def development?
    status == 'development'
  end

  def done?
    status == 'done'
  end

  def completion
    (tasks.where(completed: true).size.fdiv(tasks.size) * 100).to_i
  end
end
