class Role < ApplicationRecord
  belongs_to :project
  has_many :candidacies
  has_many :language_roles

  ROLES = ['back-end', 'front-end', 'UX/UI', 'mentor']
  validates :name, :number, :status, presence: true
  validates :name, inclusion: { in: ROLES }
  validates :status, inclusion: { in: ['pending', 'progress', 'done'] }

  acts_as_taggable_on :language_back_tags, :language_front_tags, :language_ux_ui_tags

  def progress?
    status == 'progress'
  end

  def done?
    status == 'done'
  end

  def pending?
    status == 'pending'
  end

  def languages
    language_back_tag_list + language_front_tag_list + language_ux_ui_tag_list
  end
end
