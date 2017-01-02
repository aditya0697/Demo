class MessagesController < ApplicationController
  skip_before_filter :verify_authenticity_token
   #skip_before_filter :authenticate_user!, :only => "reply"

    def reply
      begin
      message_body = params["Body"]


      @user = User.where(username: params["username"])
        to_number = params["to_number"]
        messages = params["messages"]
      boot_twilio
      sms = @client.messages.create(
        from: '+19282274239',
        to: to_number,
        body: "Hello ,#{messages}. Your number is #{to_number}.
        hello from the chnology side"
      )
    rescue Twilio::REST::RequestError => e
  puts e.message
end

    end

    private

    def boot_twilio
      account_sid = "AC3fad5f3e4e3713c10267ff1aad820797"
      auth_token = "4451cea566047614c8eab4880cf4cbe0"
      @client = Twilio::REST::Client.new account_sid, auth_token
    end
end
