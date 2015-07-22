class ArticlesController < ActionController::Base
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  def index
    @articles = Article.all
  end

  def show

  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

end
