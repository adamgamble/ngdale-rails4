class PagesController < ApplicationController
  def show
    @page = Page.where(:slug => params[:slug]).first
    raise ActionController::RoutingError.new('Not Found') unless @page
  end
end
