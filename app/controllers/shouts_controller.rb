class ShoutsController < ApplicationController

  def index
    @articles = Article.all
  end
  
  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  # this is what's called when you create the new article
  def create
    @article = Article.new(params[:article])
    @article.save
    redirect_to root_url
  end

end
