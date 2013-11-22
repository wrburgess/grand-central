class CtaTrain

  def initialize(stop_id)
    root_url = "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx"
    api_key = "52953f8cb3d64bbc83128033e8895bc9"
    limit = "3"
    @request_url = "#{root_url}?key=#{api_key}&max=#{limit}&stpid=#{stop_id}"
  end

  def get_times
    current_datetime = Time.now
    xml = Nokogiri::HTML(open(@request_url))
    
    @times = xml.search("eta").map do |eta|
      duration_formatted current_datetime, eta.search("arrt").text
    end
  end

  private

  def duration_formatted(current_datetime, predicted_datetime)
    time_diff_components = Time.diff(current_datetime, predicted_datetime)
    time_diff_components[:minute]
  end

end