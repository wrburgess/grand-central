class DivvyBicycle

  def initialize
    @request_url = "http://divvybikes.com/stations/json"
  end

  def get_counts
    doc = ActiveSupport::JSON.decode(Nokogiri::HTML(open(@request_url)))
    stations = doc["stationBeanList"]
    selected = stations.select { |station| station if station["id"] == 351 }
    selected.map { |station| station["availableBikes"] }
  end

end