class ScreensController < ApplicationController

  def dashboard
    cta_bus1 = CtaBus.new("8817")
    @bus_times1 = cta_bus1.get_times

    cta_bus2 = CtaBus.new("17603")
    @bus_times2 = cta_bus2.get_times

    cta_train = CtaTrain.new("30019")
    @train_times1 = cta_train.get_times

    @divvy_bicycle = DivvyBicycle.new(351)

    @weather = Weather.new("60657")
  end

end