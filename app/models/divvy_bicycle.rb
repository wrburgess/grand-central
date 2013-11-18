class DivvyBicycle

  def initialize
    @request_url = "http://divvybikes.com/stations/json"
  end

  def get_counts
    doc = JSON.parse(Nokogiri::HTML(open(@request_url)))
    list = doc["stationBeanList"]

    @counts = list.map do |station|
      station["availableBikes"] if station["id"] == 344
    end
  end

end