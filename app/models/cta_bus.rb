class CtaBus 

  def initialize(stop_id)
    root_url = "http://www.ctabustracker.com/bustime/api/v1/getpredictions"
    api_key = "rRnYh7Czwy6XNPebSUvivZk4a"
    limit = "3"
    @request_url = "#{root_url}?key=#{api_key}&top=#{limit}&stpid=#{stop_id}"
  end

  def get_times
    current_datetime = Time.now
    xml = Nokogiri::HTML(open(@request_url))
    
    times = xml.search("prd").map do |prd|
      duration_formatted current_datetime, prd.search("prdtm").text
    end
  end

  private

  def duration_formatted(current_datetime, predicted_datetime)
    time_diff_components = Time.diff(current_datetime, predicted_datetime)
    time_diff_components[:minute]
  end

end