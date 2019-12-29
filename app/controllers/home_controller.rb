class HomeController < ApplicationController
  def index
    require 'uri'
    require 'net/http'
    require 'openssl'
    
    url = URI("https://public-holiday.p.rapidapi.com/2019/AU")
    
    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    
    request = Net::HTTP::Get.new(url)
    request["x-rapidapi-host"] = 'public-holiday.p.rapidapi.com'
    request["x-rapidapi-key"] = 'c0dca78e29msh040e8b143d5ce89p1b4997jsn772f2d8fd9b4'
    
    
@response = http.request(request)

    
end

end
