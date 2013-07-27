class Members::ApplicationController < ApplicationController
  layout "members"

  before_filter :authenticate_user!
end
