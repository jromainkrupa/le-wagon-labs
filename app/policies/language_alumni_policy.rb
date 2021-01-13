class LanguageAlumniPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    user.instance_of?(Alumni)
  end

  def new?
    create?
  end

  def destroy?
    user == record.alumni
  end
end
