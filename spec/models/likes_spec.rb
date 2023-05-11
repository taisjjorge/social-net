require 'rails_helper'

RSpec.describe Like, type: :model do
  include Rack::Test::Methods
  include ActionDispatch::TestProcess::FixtureFile

  it "user likes a post" do
    
    tais = FactoryBot.create(:user)
    gabi = FactoryBot.create(:user)
    ricardo = FactoryBot.create(:user)
    
    post = FactoryBot.create(:post, user: tais)

    Like.create(user: gabi, post: post)

    expect(post.likes.count).to eql 1
    expect(post.likes.first.user).to eql gabi

    Like.create(user: ricardo, post: post)

    expect(post.likes.count).to eql 2
    expect(post.likes.last.user).to eql ricardo

    Like.find_by(post: post, user: gabi).destroy

    expect(post.likes.count).to eql 1
    expect(post.likes.first.user).to eql ricardo
  end
end
