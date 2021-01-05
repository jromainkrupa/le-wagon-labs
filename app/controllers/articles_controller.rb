class ArticlesController < ApplicationController

  def index
    @articles = policy_scope(Article)
  end

  def show
    @article = policy_scope(Article).find(params[:id])
  end

  def create
  end

  def new
    @article = Article.new
    authorize @article
  end

  def update
  end

  def edit
  end

  def destroy
  end
end
