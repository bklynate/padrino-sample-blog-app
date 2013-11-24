require 'spec_helper'

describe Post do
  context 'for validation' do
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

  describe '.author' do
    subject(:post) { create(:post) }

    context 'when there is account associated' do
      it "should be 'Foo Bar'" do
        post.author.should == 'Foo Bar'
      end
    end

    context 'when there is no account associated' do
      before { post.account = nil }

      it 'should be nil' do
        post.author.should be_nil
      end
    end
  end
end
