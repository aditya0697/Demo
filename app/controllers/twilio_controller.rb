class TwilioController < ApplicationController
  skip_before_action :verify_authenticity_token

  def voice

    begin
    boot_twilio

    @call = @client.account.calls.create(
      :from => '+19282274239',
      :to => '+918487835252',
      :url => 'http://twimlets.com/AC3fad5f3e4e3713c10267ff1aad820797/aditya'
    )
  rescue Twilio::REST::RequestError => e
puts e.message
    account_sid = 'PN167604c3dd76c4a6fa9034eb4d5f54fa'
  auth_token = '4451cea566047614c8eab4880cf4cbe0'
  @client = Twilio::REST::Client.new account_sid, auth_token

 end
end
 private

 def boot_twilio
   account_sid = "AC3fad5f3e4e3713c10267ff1aad820797"
   auth_token = "4451cea566047614c8eab4880cf4cbe0"
   @client = Twilio::REST::Client.new account_sid, auth_token
 end

end
