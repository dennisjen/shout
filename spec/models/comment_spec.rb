require 'spec_helper'

describe Comment do
  it "must have an article id" do
    comment = Comment.new
    result_of_save = comment.save
    result_of_save.should be_false

    expect { comment.save! }.to raise_error(ActiveRecord::RecordInvalid)

    comment.errors[:article_id].should_not be_nil
  end

end

