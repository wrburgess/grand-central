class CtaBus 

  def initialize(stop_id)
    root_url = "http://www.ctabustracker.com/bustime/api/v1/getpredictions"
    bus_key = "rRnYh7Czwy6XNPebSUvivZk4a"
    bus_limit = "3"
    @request_url = "#{root_url}?key=#{bus_key}&top=#{bus_limit}&stpid=#{stop_id}"
  end

  def get_times
    xml = Nokogiri::HTML(open(@request_url))
    
    @bus_times = xml.search("prd").map do |prd|
      prd.search("prdtm").text
    end
  end

end