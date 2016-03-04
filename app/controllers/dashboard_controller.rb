class DashboardController < ApplicationController
  def show
    @dashboard = Dashboard.new(params[:date])
  end
end
