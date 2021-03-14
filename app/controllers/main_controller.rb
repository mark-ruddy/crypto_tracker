class MainController < ApplicationController
  def list
    @coins = CoingeckoClient::Client.coins_list
  end
end
