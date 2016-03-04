class WeightsController < ApplicationController
  before_action :set_weight, only: [:show]

  def index
    @weights = Weight.all
  end

  def show
  end

  private
    def set_weight
      @weight = Weight.find(params[:id])
    end

end
