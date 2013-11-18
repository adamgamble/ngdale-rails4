class SermonsController < ApplicationController

  def index
    @sermons = Sermon.order(:date => :desc).page(params[:page])
  end

  def show
    @sermon = Sermon.find(params[:id])
  end
end
