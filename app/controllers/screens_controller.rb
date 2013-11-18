class ScreensController < ApplicationController

  def dashboard
    cta_bus = CtaBus.new("898")
    @bus_times1 = cta_bus.get_times

    cta_bus = CtaBus.new("899")
    @bus_times2 = cta_bus.get_times

    divvy_bicycle = DivvyBicycle.new()
    @bicycle_counts = divvy_bicycle.get_counts
  end

end
