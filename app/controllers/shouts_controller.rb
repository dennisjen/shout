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
    if @article.save
      # this saves it to a cookie for a single redirect
      flash[:notice] = 'The article has been created.'
      redirect_to root_url, :notice => "The article has been created"
    else
      render :new
    end
  end

end
