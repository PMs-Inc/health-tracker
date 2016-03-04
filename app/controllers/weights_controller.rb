class WeightsController < ApplicationController
  before_action :set_weight, only: [:show]

  def index
    @weights = Weight.all
  end

  def show
  end

  def new
    @weight = Weight.new
  end

  def create
    @weight = Weight.new(weight_params)

    respond_to do |format|
      if @weight.save
        format.html { redirect_to @weight }
      else
        format.html { render :new }
      end
    end
  end

  private
    def set_weight
      @weight = Weight.find(params[:id])
    end

    def weight_params
      params.require(:weight).permit(:weight, :date_id)
    end

end
