require 'net/http'
require 'openssl'
require 'json'

class GooglApi
  attr_accessor :api_key

  @@uri = URI('https://www.googleapis.com/urlshortener/v1/url')
  @@http = Net::HTTP.new(@@uri.host, @@uri.port)
  @@http.use_ssl = true
  @@http.verify_mode = OpenSSL::SSL::VERIFY_NONE

  def initialize(api_key)
    self.api_key = api_key
  end

  def shorten(long_url)
    req = Net::HTTP::Post.new(URI('https://www.googleapis.com/urlshortener/v1/url') + "?key=#{self.api_key}")
    req.body = {longUrl: long_url}.to_json
    req.content_type = 'application/json'

    response = @@http.request(req).body
    JSON.parse(response)['id']
  end
end
