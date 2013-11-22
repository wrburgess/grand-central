class DivvyBicycle

  def initialize(station_id)
    @request_url = "http://divvybikes.com/stations/json"
    @data = ActiveSupport::JSON.decode(Nokogiri::HTML(open(@request_url)))
    @station_id = station_id
  end

  def available_bikes
    stations = @data["stationBeanList"]
    selected = stations.select { |station| station if station["id"] == @station_id }
    available = selected.map { |station| station["availableBikes"] }
    available[0]
  end

  def total_docks
    stations = @data["stationBeanList"]
    selected = stations.select { |station| station if station["id"] == @station_id }
    total = selected.map { |station| station["totalDocks"] }
    total[0]
  end

  def open_docks
    total_docks - available_bikes
  end

end