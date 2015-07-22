class ArticlesController < ApplicationController
  include ArticlesHelper
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  def index
    @articles = Article.all
  end

  def show
    @comment = Comment.new
    @comment.article_id = @article_id
  end

  def new
    @article = Article.new
  end

  def edit
  end

  def update
    @article.update(article_params)
    flash.notice = "The article #{article_params[:title]} was updated!"
    redirect_to article_path(@article)
  end

  def create
    Article.create(article_params)
    flash.notice = "The article #{article_params[:title]} was created!"
    redirect_to articles_path
  end

  def destroy
    @article.destroy
    flash.notice = "The article was deleted!"
    redirect_to articles_path
  end



end
