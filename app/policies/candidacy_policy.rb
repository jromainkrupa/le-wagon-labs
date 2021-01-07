class CandidacyPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  # def index?
  #   user.instance_of?(Alumni)
  # end

  # def show?
  #   user.instance_of?(Alumni)
  # end

  def create?
    user.instance_of?(Alumni) && user.candidacies.select { |candidacy| candidacy.project == record.project }.empty?
  end

  def new?
    create?
  end

  def update?
    false # the website will update it without a user action
  end

  def edit?
    update?
  end

  def destroy?
    user.instance_of?(Alumni) && user.id == record.alumni_id
  end
end
