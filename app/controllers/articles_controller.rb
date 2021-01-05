class ArticlesController < ApplicationController
  before_action policy_scope(Article)

  def index
    @articles = Article.all
  end

  def show
  end

  def create
  end

  def new
  end

  def update
  end

  def edit
  end

  def destroy
  end
end
