class ScreensController < ApplicationController

  def dashboard
    cta_bus = CtaBus.new("898")
    @bus_times = cta_bus.get_times

    divvy_bicycle = DivvyBicycle.new()
    @bicycle_counts = divvy_bicycle.get_counts
  end

end
