require 'rails_helper'

RSpec.describe "Mains", type: :request do
  describe "GET root" do
    it "returns http success" do
      get "/"
      expect(response).to have_http_status(:success)
    end
  end
end
