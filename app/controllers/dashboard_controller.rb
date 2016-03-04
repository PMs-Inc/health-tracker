class DashboardController < ApplicationController
  def show
    @dashboard = Dashboard.new(params[:date].to_i)
  end
end
