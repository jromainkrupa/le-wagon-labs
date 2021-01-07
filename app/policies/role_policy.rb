class RolePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    true
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
    false
  end
end
