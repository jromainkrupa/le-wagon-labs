class TaskPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    record.project.all_users.include?(user)
  end

  def create?
    user == record.project.mentor
  end

  def new?
    create?
  end

  def edit?
    update?
  end

  def update?
    user == record.project.mentor
  end
end
