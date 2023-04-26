require 'rails_helper'

RSpec.describe "Profiles", type: :request do

  describe "GET /new" do
    it "returns http success" do
      get "/profile/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/profile/create"
      expect(response).to have_http_status(:success)
    end
  end

end
