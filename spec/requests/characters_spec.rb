require 'rails_helper'

RSpec.describe "Characters", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/characters/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/characters/show"
      expect(response).to have_http_status(:success)
    end
  end

end
