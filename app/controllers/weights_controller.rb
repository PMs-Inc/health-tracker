class WeightsController < ApplicationController

  def index
    @weights = Weight.all
  end

  def show
  end
  
end
