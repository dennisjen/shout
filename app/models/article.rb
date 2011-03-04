class Article < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :body
  has_many :comments

  def self.by_most_recent
    all_articles = Article.all
    all_articles.sort{ |a,b| a.created_at <=> b.created_at }.reverse
  end

end
