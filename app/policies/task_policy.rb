class TaskPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    user == record.project.mentor
  end

  def edit?
    update?
  end

  def update?
    user == record.project.mentor
  end
end
