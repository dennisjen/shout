class Article < ActiveRecord::Base
  validates_presence_of :name, :body

  has_many :comments
end
