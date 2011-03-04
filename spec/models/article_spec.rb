require 'spec_helper'

describe Article do
  it "Produces the name when sent #to_s" do

    "setup"
    the_name = "The Article Name"
    article = Article.new(:name => the_name)

    "exercise"
    actual_string = article.name

    "verification"
    "rspec adds should to all objects"
    actual_string.should == the_name
  end

  it "Test out getting the most recent article" do

    article_names = ["article name", "this is awesome", "something here" ]
    old_article = Factory(:article, :created_at=>5.minutes.ago)
    new_article = Factory(:article, :created_at=>Time.now)
    sorted_articles = Article.by_most_recent

    "make sure that you're getting the correct number of articles"
    sorted_articles.length.should == 2

    "now make sure the actual articles are in the right order"
    sorted_articles.should == [new_article, old_article]

  end
end
