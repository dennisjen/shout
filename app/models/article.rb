class Article < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :body
  has_many :comments

  def self.by_recency
    all_articles = Article.all
    all_articles.sort{ |a,b| a.create_at <=> b.create_at }
  end

end
