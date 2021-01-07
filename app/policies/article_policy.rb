class ArticlePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    user.instance_of?(Alumni)
  end

  def show?
    user.instance_of?(Alumni)
  end

  def create?
    user.instance_of?(Alumni)
  end

  def new?
    create?
  end

  def update?
    user == record.alumni
  end

  def edit?
    update?
  end

  def destroy?
    user == record.alumni
  end
end
