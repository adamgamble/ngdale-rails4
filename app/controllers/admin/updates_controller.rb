require 'twilio-ruby'
class Admin::UpdatesController < Admin::ApplicationController
  def index
    @updates = Update.all
  end

  def phone_call
    response = Twilio::TwiML::Response.new do |r|
      r.Say 'hello there', :voice => 'alice'
    end
    render text: response
  end
end
