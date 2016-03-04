class StepsController < ApplicationController
  before_action :set_step, only: [:show, :destroy]

  def index
    @steps = Step.all
  end

  def show
  end

  def new
    @step = Step.new
  end


  def create
    @step = Step.new(step_params)

    respond_to do |format|
      if @step.save
        format.html { redirect_to @step, notice: 'Step was successfully created.' }
        format.json { render :show, status: :created, location: @step }
      else
        format.html { render :new }
        format.json { render json: @step.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @step.destroy
    respond_to do |format|
      format.html { redirect_to steps_url, notice: 'Step was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_step
      @step = Step.find(params[:id])
    end

    def step_params
      params.require(:step).permit(:date_id, :step_count, :created_at, :updated_at)
    end

end
