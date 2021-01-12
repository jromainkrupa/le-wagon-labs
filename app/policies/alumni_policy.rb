class AlumniPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def dashboard?
    user.instance_of?(Alumni)
  end

  def index?
    true
  end

  def show?
    true
  end

  def edit?
    update?
  end

  def update?
    user == record
  end
end
