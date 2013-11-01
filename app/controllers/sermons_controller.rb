class SermonsController < ApplicationController

  def show
    @sermon = Sermon.find(params[:id])
  end
end
