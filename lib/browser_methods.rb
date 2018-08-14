require 'net/http'
require 'nokogiri'

module BrowserMethods
  def net_http_get(url)
    uri = URI(url)
    Net::HTTP.get(uri)
  end

  def nokogiri(url)
    Nokogiri::HTML(net_http_get(url))
  end
end