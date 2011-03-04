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

    article_names.each do |article_name|
      article = Article.new(:name => article_name)
      article.save
    end

    sorted_articles = Article.by_recency

    "make sure that you're getting the correct number of articles"
    article_names.reverse!
    sorted_articles.length.should == article_names.length

    "now make sure the actual articles are in the right order"
    i = 0
    article_names.each do |expected_article_name|
      expected_article.name.should == sorted_articles[ i ]
      i.next
    end

  end
end
