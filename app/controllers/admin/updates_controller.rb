class Admin::UpdatesController < Admin::ApplicationController

  skip_before_filter :authenticate_user!, :only => [:phone_call]
  skip_before_filter :authenticate_admin!, :only => [:phone_call]

  def index
    @updates = Update.all
  end

  def phone_call
    response = Twilio::TwiML::Response.new do |r|
      if Update.count == 0
        r.Say 'There are no updates today! Thanks for calling!', :voice => 'alice'
      else
        Update.all.each do |update|
          r.Say update.summary, :voice => 'alice'
        end
      end
    end
    render text: response.text
  end
end
