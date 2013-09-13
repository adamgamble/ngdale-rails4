require 'twilio-ruby'
class Admin::UpdatesController < Admin::ApplicationController

  skip_before_filter :authenticate_user!, :only => [:phone_call]
  skip_before_filter :authenticate_admin!, :only => [:phone_call]

  def index
    @updates = Update.all
  end

  def phone_call
    twilml = Twilio::TwiML::Response.new do |r|
      r.Say 'hello there', :voice => 'alice'
    end
    render text: twilml
  end
end
