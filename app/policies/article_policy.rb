class ArticlePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    user.class == Alumni
  end

  def show?
    user.class == Alumni
  end

  def create?
    user.class == Alumni
  end

  def new?
    create?
  end

  def update?
    user.class == Alumni && user.id == record.user_id
  end

  def edit?
    update?
  end

  def destroy?
    user.class == Alumni && user.id == record.user_id
  end
end
