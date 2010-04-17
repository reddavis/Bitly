require 'httparty'

class Bitly
  include HTTParty
  base_uri 'api.bit.ly/v3'
  format :json

  # :query => {:login :domain :url :apiKey}
  def self.shorten(query={})
    result = get('/shorten', :query => query)
  end
end