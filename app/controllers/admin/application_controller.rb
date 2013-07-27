class Admin::ApplicationController < ApplicationController
  layout "admin"

  before_filter :authenticate_user!
  before_filter :authenticate_admin!

  def authenticate_admin!
    redirect_to root_url unless current_user.admin?
  end
end
