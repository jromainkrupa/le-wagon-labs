class ArticlePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    current_alumni
  end

  def show?
    current_user.class == 'Alumni'
  end

  def create?
    current_user.class == 'Alumni'
  end

  def new?
    create?
  end

  def update?
    current_user.class == 'Alumni'
  end

  def edit?
    update?
  end

  def destroy?
    current_user.class == 'Alumni'
  end
end
