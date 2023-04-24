require 'rails_helper'

RSpec.describe User, type: :model do
  include Rack::Test::Methods
  include ActionDispatch::TestProcess::FixtureFile

  it "user is valid" do
    user = User.new(
      name: "Tais", 
      email: "tais@email.com", 
      phone: "21999990808",
      avatar: fixture_file_upload(Rails.root.join("spec", "support", "test-avatar.png"), "image/png"),
      password: "123456"
    )

    expect(user).to be_valid
  end

  it "user is not valid" do
    user = User.new(
      name: "Tais", 
      email: "tais@email.com", 
      phone: "21999990808",
      password: "123456"
    )

    expect(user).to_not be_valid
  end
end
