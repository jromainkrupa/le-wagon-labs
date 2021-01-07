class ProjectPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    true
  end

  def create?
    user.instance_of?(Entrepreneur)
  end

  def new?
    create?
  end

  def show?
    true
  end

  def edit?
    update?
  end

  def update?
    user == record.mentor
  end
end
