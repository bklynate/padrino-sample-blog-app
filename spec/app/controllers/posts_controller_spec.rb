require 'spec_helper'

describe "PostsController" do
  let!(:post_1) { create(:post) }
  let!(:post_2) { create(:post) }

  describe "#index" do
    before do
      get '/posts'
    end

    it "should include all titles of posts" do
      last_response.body.should include post_1.title
      last_response.body.should include post_2.title
    end
  end

  describe "#show" do
    before do
      get "/posts/show/#{post_1.id}"
    end

    it "should include the title" do
      last_response.body.should include post_1.title
    end

    it "should include the body" do
      last_response.body.should include post_1.body
    end

    it "should include a link to index page" do
      last_response.body.should include 'View all post'
    end
  end
end
