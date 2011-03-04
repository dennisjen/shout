class CommentsController < ApplicationController

  def create
    @article = Article.find(params[:article_id]);
    @comment = @article.comments.build(params[:comment])
    @comment.save

    redirect_to @article, :notice => 'Your comment is noted.'
  end

  
end
