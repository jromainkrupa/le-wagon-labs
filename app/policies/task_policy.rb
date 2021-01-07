class TaskPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
  end

  def create?
    user == project.mentor
  end

  def new?
    create?
  end
end
