require 'spec_helper'

describe SampleBlog do
  describe "#index" do
    before do
      get '/'
    end

    it "should redirect to posts index" do
      last_response.should be_redirect
      last_response.location.should end_with '/posts'
    end
  end
end
