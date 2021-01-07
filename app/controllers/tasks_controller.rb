class TasksController < ApplicationController
  def index
    @tasks = policy_scope(Task)
    authorize @tasks
  end

  def create
  end

  def new
  end
end
