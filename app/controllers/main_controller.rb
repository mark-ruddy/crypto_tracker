class MainController < ApplicationController
  def list
    @currency ||= 'usd'

    all_data_request = "coins/markets?vs_currency=#{@currency}&order=market_cap_desc&per_page=250&page=1&sparkline=false&price_change_percentage=7d"
    @coins = api_call(all_data_request)
  end

  private

  def api_call(api_request)
    endpoint_head = 'https://api.coingecko.com/api/v3/'
    url = endpoint_head + api_request
    response = Excon.get(url)
    return nil if response.status != 200
    JSON.parse(response.body)
  end
end
