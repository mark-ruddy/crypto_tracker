require 'rails_helper'

RSpec.describe "Mains", type: :request do
  describe "GET root" do
    it "returns http success" do
      get "/"
      expect(response).to have_http_status(:success)
    end
  end

  describe "Ensure coingecko_client is working" do
    it "responds to ping" do
      # If the client is working it responds with a hash including this phrase
      expect(CoingeckoClient::Client.ping["gecko_says"]).to eq("(V3) To the Moon!")
    end
  end
end
