class Weather

  def initialize(zipcode)
    root_url = "http://api.openweathermap.org/data/2.5/weather"
    request_url = "#{root_url}?q=#{zipcode}"
    @data = ActiveSupport::JSON.decode(Nokogiri::HTML(open(request_url)))
  end

  def current_date
    Time.now.strftime "%a, %b %e"
  end

  def current_time
    Time.now.strftime "%l:%M %p"
  end

  def current_temp
    temp = to_fahrenheit @data["main"]["temp"]
    "#{temp} F"
  end

  def high_temp
    temp = to_fahrenheit @data["main"]["temp_max"]
    "#{temp} F"
  end

  def low_temp
    temp = to_fahrenheit @data["main"]["temp_min"]
    "#{temp} F"
  end

  def chance_of_rain
    "30%"
  end

  def wind
    speed = @data["wind"]["speed"]
    "#{speed} mph"
  end

  private

  def to_fahrenheit(temp)
    celsius = temp - 273
    converted = celsius * 1.8 + 32
    converted.round
  end

end