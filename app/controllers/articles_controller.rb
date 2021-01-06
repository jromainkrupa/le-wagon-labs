class ArticlesController < ApplicationController

  def index
    @articles = policy_scope(Article)
    authorize @articles
  end

  def show
    @article = Article.find(params[:id])
    authorize @article
  end

  def create
    @article = Article.new(article_params)
    @article.alumni = pundit_user
    authorize @article
    if @article.save
      redirect_to article_path(@article)
    else
      render :new
    end
  end

  def new
    @article = Article.new
    authorize @article
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to article_path(@article)
    else
      render :edit
    end
  end

  def edit
    @article = Article.find(params[:id])
    authorize @article
  end

  def destroy
    @article = Article.find(params[:id])
    authorize @article
    @article.destroy
    redirect_to dashboard_alumnis_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end
end
