require 'spec_helper'

describe Post do
  subject(:post) { Post.new }

  it 'should require a title' do
    post.body = 'Body'
    post.should_not be_valid
    post.title = 'Title'
    post.should be_valid
  end

  it 'should require the body' do
    post.title = 'Title'
    post.should_not be_valid
    post.body = 'Body'
    post.should be_valid
  end
end
