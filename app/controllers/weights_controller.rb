class WeightsController < ApplicationController
  before_action :set_weight, only: [:show, :destroy]
  before_action :authenticate_user!


  def index
    @weights = Weight.all
  end

  def show
  end

  def new
    @weight = Weight.new
    @days = Day.get_days

  end

  def create
    @weight = Weight.new(weight_params)
    @days = Day.get_days


    respond_to do |format|
      if @weight.save
        format.html { redirect_to @weight }
      else
        format.html { render :new }
      end
    end
  end

  def destroy
    @weight.destroy
    respond_to do |format|
      format.html { redirect_to weights_path}
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
